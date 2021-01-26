#ifndef IPADDRESS_CPP
#define IPADDRESS_CPP

#include "ip_address.h"
#include "ui_ip_address.h"
#include "activateip.h"
#include "edit_ip.h"

void DeviceItem::setData(int tp, QString nm, int stat)
{
	type = tp;
	mac = nm;
	status = stat;
}

void DeviceItem::Update()
{
    QSqlQuery q;

    q.prepare("UPDATE devices SET id_tp=:type, macaddr=:mac, status=:status WHERE id=:id");
    q.bindValue(":id", id);
    q.bindValue(":type", type);
    q.bindValue(":mac", mac);
    q.bindValue(";status", status);
    if (q.exec())
        q.exec("COMMIT");
    else {
        qDebug() << q.lastError();
        q.exec("ROLLBACK");
    }
}

void IPAddressItem::setData(int _id, int _host, int _dev, IPAddr _ip, QString _mac, QString addr, QDate _start, QDate _stop, int _status, int tp)
{
    id = _id;
    host = _host;
    dev = _dev;
    ip = _ip;
    device.setData(tp, _mac, 1);
    address = addr;
    start = _start;
    stop = _stop;
    status = _status;
}

void IPAddressItem::readById(int _id)
{
    QSqlQuery q;

    q.prepare("SELECT i.id, i.host, i.dev, i.ip, d.macaddr, i.addr, i.start, i.end, i.status, d.id, d.id_tp FROM hosts h, ipaddress i LEFT JOIN devices d on i.id_dev = d.id WHERE i.id = :id");
    q.bindValue(":id", _id);
    if (q.exec() && q.next()) {
        id = q.value(0).toInt();
        host = q.value(1).toInt();
        dev = q.value(2).toInt();
        ip = q.value(3).toString();
        device.setData(q.value(10).toInt(), q.value(4).toString(),1);
        device.setId(q.value(9).toInt());
        address = q.value(5).toString();
        start = q.value(6).toDate();
        stop = q.value(7).toDate();
        status = q.value(8).toInt();
    }
}

IPAddressData::IPAddressData()
{
	header << "Id" << "Type" << "Host" << "Dev" << "Address" << "IP Address" << "Mac Address" << "Start Date" << "Status";
	statusname << "" << "New" << "Active" << "Unknown" << "Unreachable" << "Bad MAC Address";
	load_data(0,0);
	dt = new DevTypesList;
}

IPAddressData::~IPAddressData()
{
	delete dt;
}

void IPAddressData::sort(int l)
{
        if (l == list.size())
            return;

        uint min = list.at(l).Ip().toInt();
        int r = l;
        for (int i = l+1; i < list.size(); ++i) {
            if (list.at(i).Ip().toInt() < min) {
                r = i;
                min = list.at(i).Ip().toInt();
            }
        }

        if (r != l) {
            list.move(r, l);
        }

        sort(l+1);
}

void IPAddressData::load_data(int host, int status)
{
	QString str;
	QSqlQuery q;

	list.clear();

    str = "SELECT i.id, h.host, i.dev, i.ip, d.macaddr, i.addr, i.start, i.end, i.status, d.id_tp, d.id FROM hosts h, ipaddress i LEFT JOIN devices d on i.id_dev = d.id WHERE i.host = h.id";
	if (host)
		str += QString(" AND i.host = %1").arg(host);
	if (status)
		str += QString(" AND i.status = %1").arg(status);
	str += " ORDER BY h.host,i.dev,i.ip";
//	qDebug() << str;

	q.exec(str);
	while (q.next()) {
		IPAddressItem ip;
        ip.setData(q.value(0).toInt(),
                   q.value(1).toInt(),
                   q.value(2).toInt(),
                   q.value(3).toString(),
                   q.value(4).toString(),
                   q.value(5).toString(),
                   q.value(6).toDate(),
                   q.value(7).toDate(),
                   q.value(8).toInt(),
                   q.value(9).toInt());
        ip.Device().setId(q.value(10).toInt());
        list.append(ip);
//		qDebug() << ip.Id();
	}

    sort(0);
}

void IPAddressItem::updateStatus()
{
    QSqlQuery q;

    if (id == 0)
        return;

    q.prepare("UPDATE ipaddress SET addr = :addr, dev = :dev, host = :host, status=:status WHERE id = :id");
    q.bindValue(":id", id);
    q.bindValue(":addr", address);
    q.bindValue(":dev", dev);
    q.bindValue(":host", host);
    q.bindValue(":status", status);
    if (q.exec())
        q.exec("COMMIT");
    else {
        qDebug() << q.lastError();
        q.exec("ROLLBACK");
    }

}

int IPAddressData::rowCount()
{
	return list.size();
}

int IPAddressData::columnCount()
{
	return header.size();
}

QVariant IPAddressData::data(int row, int column)
{
	IPAddressItem ip;

	if (column == 0) {
		ip = list.at(row);
		return ip.Id();
	}

	if (column == 1) {
		ip = list.at(row);
        return dt->Cod(ip.Type());
	}

	if (column == 2) {
        ip = list.at(row);
		return ip.Host();
	}

	if (column == 3) {
		ip = list.at(row);
		return ip.Dev();
	}

    if (column == 4) {
        ip = list.at(row);
        return ip.Address();
    }

    if (column == 5) {
		ip = list.at(row);
        return ip.Ip().toString();
	}

    if (column == 6) {
		ip = list.at(row);
		return ip.Mac();
	}

    if (column == 7) {
		ip = list.at(row);
		return ip.Start();
	}

    if (column == 8) {
		ip = list.at(row);
		return statusname.at(ip.Status());
	}

	return QVariant();
}

QVariant IPAddressData::headerdata(int idx)
{
	return header.at(idx);
}

IPAddressModel::IPAddressModel(QObject *parent) :
	QAbstractTableModel(parent)
{
	ip = new IPAddressData;
}

IPAddressModel::~IPAddressModel()
{
	delete ip;
}

int IPAddressModel::rowCount(const QModelIndex &parent) const
{
	return ip->rowCount();
}

int IPAddressModel::columnCount(const QModelIndex &parent) const
{
	return ip->columnCount();
}

QVariant IPAddressModel::data(const QModelIndex &index, int role) const
{
	if (role == Qt::DisplayRole) {
		return ip->data(index.row(), index.column());
	}

	return QVariant();
}

QVariant IPAddressModel::headerData(int section, Qt::Orientation orientation, int role) const
{
	if (orientation == Qt::Horizontal && role == Qt::DisplayRole)
		return ip->headerdata(section);
	return QVariant();
}

void IPAddressModel::update_data(int host, int status)
{
	beginResetModel();
	ip->load_data(host, status);
	endResetModel();
	emit dataUpdated();
}

int IPAddressModel::Index(int idx)
{
	return ip->Index(idx);
}

Qt::ItemFlags IPAddressModel::flags(const QModelIndex &index) const
{
    if(index.column() == 1)
        return Qt::ItemIsEnabled | Qt::ItemIsSelectable | Qt::ItemIsEditable; // вторую колонку можно редактировать

    return Qt::ItemIsEnabled | Qt::ItemIsSelectable; // остальные нет
}

bool IPAddressModel::setData(const QModelIndex &index, const QVariant &value, int role)
{
	return false;
}

IPAddress::IPAddress(QWidget *parent) :
	QWidget(parent),
	ui(new Ui::IPAddress)
{
	ui->setupUi(this);

	model = new IPAddressModel(this);
	ui->tableView->setModel(model);
    ui->tableView->hideColumn(0);

    ui->tableView->setAlternatingRowColors(true);
    ui->tableView->setSelectionBehavior(QAbstractItemView::SelectRows);
    ui->tableView->header()->setSectionResizeMode(QHeaderView::ResizeToContents);

	QAction *an = new QAction(tr("Insert"), this);
	connect(an, SIGNAL(triggered(bool)), SLOT(Insert()));
	acts.append(an);

    QAction *up = new QAction(tr("Activate"), this);
    connect(up, SIGNAL(triggered(bool)), SLOT(Activate()));
	acts.append(up);

	QAction *rm = new QAction(tr("Remove"), this);
	connect(rm, SIGNAL(triggered(bool)), SLOT(Remove()));
	acts.append(rm);

    QAction *pn = new QAction(tr("Ping"), this);
//	connect(pn, SIGNAL(triggered(bool)), SLOT(Remove()));
    acts.append(pn);

    ui->tableView->addActions(acts);
	ui->tableView->setContextMenuPolicy(Qt::ActionsContextMenu);

	connect(ui->hostBox, SIGNAL(currentIndexChanged(int)), this, SLOT(reload()));
	connect(ui->statusBox, SIGNAL(currentIndexChanged(int)), this, SLOT(reload()));

	QTimer *ptimer = new QTimer(this);
	connect(ptimer, SIGNAL(timeout()), SLOT(reload()));
	ptimer->start(60*1000);
}

IPAddress::~IPAddress()
{
	delete ui;
}

void IPAddress::reload()
{
	int status = ui->statusBox->Value();
	host = ui->hostBox->Value();

	model->update_data(host, status);
}

void IPAddress::Insert()
{
	edit_IP *ip = new edit_IP(host, this);
	ip->exec();
}

void IPAddress::Activate()
{
	int idx = ui->tableView->currentIndex().row();
	
	if (idx == -1) {
        QMessageBox::critical(this, tr("Activate device"), tr("You must be select line"));
		return;
	}
	
	int id = model->Index(idx);

    IPAddressItem od;
    IPAddressItem nd;

    od.readById(id);

    ActivateIP *ip = new ActivateIP(this);
    ip->setData(od);
	if (ip->exec()) {
        DeviceItem dev;
        nd = ip->Data();
        nd.setId(od.Id());
        nd.setStatus(2);
        dev = nd.Device();
        dev.setId(od.Device().Id());
        nd.updateStatus();
        dev.Update();
		reload();
	}
}

void IPAddress::Remove()
{
	int idx = ui->tableView->currentIndex().row();

	if (idx == -1) {
		QMessageBox::critical(this, tr("Update IP Address"), tr("You must be select line"));
		return;
	}
	
	int id = model->Index(idx);

	int n = QMessageBox::question(this, "Delete IP Address", "You want remove item?", QMessageBox::Yes | QMessageBox::No, QMessageBox::No);
}

void IPAddress::Ping()
{

}

#endif
