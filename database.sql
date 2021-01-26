create table Hosts(id integer primary key autoincrement, host integer, name varchar(100));
create table Networks(id integer primary key autoincrement, id_hst integer, nets varchar(30), status integer, gateway varchar(20));
create table DeviceType(id integer primary key autoincrement, name varchar(100));
create table Devices(id integer primary key autoincrement, name varchar(100), macaddr varchar(20), id_tp integer);
create table IPAddress(id integer primary key autoincrement, id_dev integer, host integer, dev integer, ip varchar(20), addr varchar(100), start date, end date, status integer);
