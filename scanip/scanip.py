#!/usr/bin/python

#
# Status:
# 1 - new
# 2 - active
# 3 - unknown
# 4 - unreachable
# 5 - bad mac address
# 99 - delete
#

import os
import sqlite3
import re

global con

def insert_device(mac):
	print('Insert MAC:',mac)
	t = (mac,)
	cur = con.cursor()
	r = cur.execute('INSERT INTO Devices(macaddr,id_tp) VALUES(?,1)',t)
	if r:
		con.commit()
		return find_device(mac)
	else:
		return 0

def find_device(mac):
	t = (mac,)
	cur = con.cursor()
	cur.execute('SELECT id FROM Devices WHERE macaddr = ?',t)
	row = cur.fetchone()
	if row:
		return row[0]
	else:
		return insert_device(mac)

def read_mac(gateway):
	macs = {}
	str = './scanmac.tcl '+gateway
#	print(str)
	f = os.popen(str, 'r')
	while True:
		s = f.readline()
		if s:
			r = re.findall(r'(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}).+([0-9a-z]{4}\.[0-9a-z]{4}\.[0-9a-z]{4})', s)
			if r:
				ip,mac = r[0]
				macs[ip] = mac
#				print(ip,mac)
		else:
			break
	f.close()
	return macs

def get_data(ip):
	t = (ip,)
	cur = con.cursor()
	cur.execute('SELECT d.macaddr,i.status,i.id,d.id FROM IPAddress i LEFT JOIN Devices d ON d.id = i.id_dev WHERE i.ip = ? AND i.status < 99', t)
	row = cur.fetchone()
#	print(ip,row)
	if row:
		return row
	return ('',0,0,0)

def set_status(ip,status):
	print('Set status',ip,status)
	t = (status,ip,)
	cur = con.cursor()
	cur.execute('UPDATE IPAddress SET status=? WHERE ip=? AND status<99', t)
#	con.commit()

def set_devstatus(id,status):
	print('Set device status',id,status)
	t = (status,id,)
	cur = con.cursor()
	cur.execute('UPDATE Devices SET status=? WHERE id=?', t)
#	con.commit()

def get_ip(ip):
	t = (ip,)
	cur = con.cursor()
	cur.execute('SELECT id FROM IPAddress WHERE ip=? AND status < 99',t)
	row = cur.fetchone()
	if row:
		return row[0]
	else:
		return 0


def insert_ip(ip,id_dev,host,status):
	print('Insert IP:',ip)
	t = (id_dev,host,ip,status,)
	cur = con.cursor()
	cur.execute('INSERT INTO IPAddress(id_dev,host,ip,start,status) VALUES(?,?,?,date(),?)', t)
#	con.commit()

def remove_ip(id):
	print('Remove IP:',id)
	t = (id,)
	cur = con.cursor()
	cur.execute('DELETE FROM IPAddress WHERE id=?', t)
#	con.commit()

def update_dev(ip,id_dev):
	print('Update dev IP:',ip)
	t = (id_dev,ip,)
	cur = con.cursor()
	cur.execute('UPDATE IPAddress SET id_dev = ? WHERE ip=? AND status < 99', t)
#	con.commit()

def write_hist(ip, dev, status):
	print('Write history:',ip,dev,status)
	t = (ip,dev,status,)
	cur = con.cursor()
	cur.execute('INSERT INTO devhistory(dt,ip_id,dev_id,status) VALUES(date(),?,?,?)',t)
#	con.commit()

def ipaddr(net,host,macs):
	
	str = '/usr/sbin/fping -i 10 -r 2 -g '+net
	f = os.popen(str,'r')
	while True:
		s = f.readline()
		if s:
#			print(s)
			r = re.findall(r'(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+is\s+(\w+)', s)
			if r:
				ip,stat = r[0];
				t = get_data(ip)
#				if ip in macs:
#					print(ip,t,macs[ip])
				mac,status,id,id_dev = t
#				print(ip,mac,stat,status)
				if stat == 'alive':
					if not id_dev and ip in macs:
						id_dev = find_device(macs[ip])
#					print(macs[ip],id_dev)
					if status == 0:
						insert_ip(ip,id_dev,host,3)
						id = get_ip(ip)
						set_devstatus(id_dev,1)
#						id = get_ip(con,ip)
						write_hist(id,id_dev,3)
					elif status == 1:
						set_status(ip,2)
#						id = get_ip(con,ip)
						write_hist(id,id_dev,2)
					elif ip in macs and macs[ip] != mac:
						print(mac, macs[ip])
						if status == 2:
							print('Mac unknown', ip, mac, macs[ip])
							set_status(ip,5)
#							id = get_ip(con,ip)
							write_hist(id,id_dev,5)
						else:
							id_dev = find_device(macs[ip])
							update_dev(ip,id_dev)
							id = get_ip(ip)
							write_hist(id,id_dev,5)
					elif status == 4:
						set_status(ip,2)
#						id = get_ip(con,ip)
						write_hist(id,id_dev,2)
				if stat == 'unreachable':
					if (status == 2):
#						id_dev = find_device(con,macs[ip])
						set_status(ip,4)
#						set_devstatus(id_dev,2)
#						id = get_ip(con,ip)
						write_hist(id,id_dev,4)
					elif (status == 3):
#						id_dev = 0
#						id = get_ip(con,ip)
						remove_ip(id);
						set_devstatus(id_dev,2)
						write_hist(id,id_dev,0)
		else:
			break
	f.close()

def gate_access(gate):
	str = '/usr/sbin/fping -i 10 -r 2 '+gate
	f = os.popen(str,'r')
	s = f.readline()
	r = re.findall(r'(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+is\s+(\w+)', s)
	if r:
		ip,stat = r[0]
		if stat == 'alive':
			return 1
		else:
			return 0

con = sqlite3.connect('/home/lsi/projects/Dev2/dev2.db')

cur = con.cursor()
cur.execute('SELECT h.id,n.nets,n.gateway FROM hosts h, networks n WHERE n.id_hst = h.id AND n.status = 1 ORDER BY n.nets')
rows = cur.fetchall()
for row in rows:
#	print(row)
	host = row[0]
	net = row[1]
	gateway = row[2]
#	mac = ''
	if gateway and gate_access(gateway):
		macs = read_mac(gateway)
		ipaddr(net,host,macs)
		con.commit();

con.close()
