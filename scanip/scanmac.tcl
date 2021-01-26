#!/usr/bin/expect

set timeout 5

spawn telnet [lindex $argv 0]

expect "Username:" {send "lang\r"}
expect "Password:" {send "nfh0rfy3\r"}
expect ">" {send "show arp\r"}

while 1 {
	expect {
		"More" {send " "}
		">" break
	}
}
expect ">" {send "exit\t"}
