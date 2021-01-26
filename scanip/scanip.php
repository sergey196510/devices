#!/usr/bin/php
<?php
//
// Status:
// 1 - new
// 2 - active
// 3 - unknown
// 4 - unreachable
// 5 - bad mac address
// 99 - delete
//

class Database
{
    private $db;

    public function __construct($name)
    {
	$this->db = new SQLite3($name);
	$this->db->exec("PRAGMA journal_mode=WAL");
    }

    public function query($name)
    {
	return $this->db->query($name);
    }

    public function fetchArray($res)
    {
	return $this->db->fetchArray($res);
    }

    public function __destruct()
    {
    }
}


//$db = new SQLite3('../dev2.db');
$db = new Database("../dev2.db");
//$db->exec("PRAGMA journal_mode=WAL;");

function get_status($addr)
{
    global $db;

    $query = "SELECT status FROM IPAddress WHERE ip = '".$addr."' AND status < 99";
    $res = $db->query($query);
    if ($row = $res->fetchArray()) {
	return $row[0];
    }

    return '';
}

function insert_device($mac)
{
    global $db;

    $query = "INSERT INTO Devices(macaddr, id_tp) VALUES('".$mac."', 1)";
    $res = $db->query($query);
    
    print "Insert mac: ".$mac."\n";

    return find_device($mac);
}

function find_device($mac)
{
    global $db;

    $query = "SELECT id FROM Devices WHERE macaddr = '".$mac."'";
    $res = $db->query($query);
    if ($row = $res->fetchArray()) {
	return $row[0];
    }

    return insert_device($mac);
}

function get_mac($addr)
{
    global $db;

    $query = "SELECT macaddr FROM Devices d, IPAddress i WHERE i.ip = '".$addr."' AND i.id_dev = d.id AND i.status < 99";
    $res = $db->query($query);
    if ($row = $res->fetchArray()) {
	return $row[0];
    }

    return 0;
}

function read_mac($gate)
{
//Internet  198.19.36.9             7   fc75.16f9.9020  ARPA   Vlan1010
    global $macs;

    $cmd = "./scanmac.tcl ".$gate;
//    print $cmd."\n";
    $f = popen($cmd, 'r');
    while (($str = fgets($f)) !== false) {
//	print $str;
	if (preg_match('/Internet\s+(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+\d+\s+([a-fA-F0-9]{4}\.[a-fA-F0-9]{4}\.[a-fA-F0-9]{4})/', $str, $val)) {
//	    print $val[1]." ".$val[2]."\n";
	    $macs[$val[1]] = $val[2];
	}
    }
    pclose($f);
}

function set_status($addr, $stat)
{
    global $db;

    $query = "UPDATE IPAddress SET status = ".$stat." WHERE ip = '".$addr."' AND status < 99";
    $res = $db->query($query);
}

function set_devstatus($mac, $stat)
{
    global $db;

    $query = "UPDATE Devices SET status = ".$stat." WHERE macaddr = '".$mac."'";
    $res = $db->query($query);
}

function ipaddr($net, $host)
{
	global $db;
	global $macs;

	$db->query("BEGIN");
	$cmd = "/usr/sbin/fping -i 10 -r 2 -g ".$net;
	$h = popen($cmd, 'r');
	while (($str = fgets($h)) !== false) {
	    if (preg_match('/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/', $str, $addr)) {
		$stat = get_status($addr[0]);
		if (preg_match('/alive/', $str)) {

		    if (@$macs[$addr[0]])
			$id_dev = find_device($macs[$addr[0]]);
		    else
			$id_dev = 0;

		    if ($stat == 0) {
			print "$addr[0], insert\n";
			$query = "INSERT INTO IPAddress(id_dev, host, ip, start, status) VALUES($id_dev, ".$host.", '".$addr[0]."', date(), 3)";
			$db->query($query);
			set_devstatus($macs[$addr[0]], 1);
			print $macs[$addr[0]].", insert\n";
		    }

		    if ($stat == 1) {
			print "$addr[0], activating\n";
			set_status($addr[0], 2);
		    }

		    if ($stat == 4) {
			print "$addr[0], active\n";
			set_status($addr[0], 1);
		    }

		    $mac = get_mac($addr[0]);
		    if (@$macs[$addr[0]] and $mac != $macs[$addr[0]]) {
			print "$addr[0], unknown mac: ".$mac." ".@$macs[$addr[0]]."\n";
			if ($stat == 2)
			    set_status($addr[0], 4);
			else {
			    $query = "UPDATE IPAddress SET id_dev = ".$id_dev." WHERE ip = '".$addr[0]."' AND status < 99";
			    $db->query($query);
			}
		    }

		}
		if (preg_match('/unreachable/', $str)) {
		    if ($stat == 2) {
			print "$addr[0], unreachable\n";
			set_status($addr[0], 4);
		    }
		    if ($stat == 3) {
			print "$addr[0], delete\n";
			$mac = get_mac($addr[0]);
			print "$mac, delete\n";
			set_devstatus($mac, 2);
			$query = "DELETE FROM IPAddress WHERE ip = '".$addr[0]."' AND status = 3";
			$db->query($query);
		    }
		}
	    }
	}
	pclose($h);
	$db->query("COMMIT");
}

$result = $db->query('SELECT h.id,n.nets,n.gateway FROM hosts h, networks n WHERE n.id_hst = h.id AND n.status = 1');
while ($row = $result->fetchArray()) {
	$host = $row[0];
	$net = $row[1];
	$gateway = $row[2];
	$mac = '';
	if ($gateway) {
		unset($macs);
		$mac = read_mac($gateway);
	}
	ipaddr($net, $host);
}

?>
