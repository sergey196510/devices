#ifndef IPNETWORKS_CPP
#define IPNETWORKS_CPP

#include "ip_networks.h"
#include "ui_ip_networks.h"

IPNetworksData::IPNetworksData()
{
	load_data();
	header << "Host" << "Name" << "IP Network" << "Gateway" << "Status";
}

IPNetworksData::~IPNetworksData()
{
	list.clear();
}

void IPNetworksData::load_data()
{
	QSqlQuery q;
	record r;

	list.clear();

	q.exec("SELECT n.id,h.host,h.name,n.nets,n.gateway,n.status FROM Hosts h, Networks n WHERE h.id = n.id_hst ORDER BY h.host");
	while (q.next()) {
		r.id = q.value(0).toInt();
		r.host = q.value(1).toInt();
		r.name = q.value(2).toString();
		r.ipaddr = q.value(3).toString();
		r.gateway = q.value(4).toString();
		r.status = q.value(5).toInt();
		list.append(r);
	}
}

int IPNetworksData::rowCount()
{
	return list.size();
}

int IPNetworksData::columnCount()
{
	return header.size();
}

QVariant IPNetworksData::data(int row, int col)
{
	record r = list.at(row);

	if (col == 0)
		return r.host;
	if (col == 1)
		return r.name;
	if (col == 2)
		return r.ipaddr;
	if (col == 3)
		return r.gateway;
	if (col == 4)
		return (r.status) ? "Enable" : "Disable";
	return QVariant();
}

QVariant IPNetworksData::headerdata(int idx)
{
	return header.at(idx);
}

IPNetworksModel::IPNetworksModel(QObject *parent) :
	QAbstractTableModel(parent)
{
	dt = new IPNetworksData;
}

int IPNetworksModel::rowCount(const QModelIndex &parent) const
{
	return dt->rowCount();
}

int IPNetworksModel::columnCount(const QModelIndex &parent) const
{
	return dt->columnCount();
}

QVariant IPNetworksModel::data(const QModelIndex &index, int role) const
{
	if (role == Qt::DisplayRole) {
		return dt->data(index.row(), index.column());
	}

	return QVariant();
}

QVariant IPNetworksModel::headerData(int section, Qt::Orientation orientation, int role) const
{
	if (orientation == Qt::Horizontal && role == Qt::DisplayRole)
		return dt->headerdata(section);
	return QVariant();
}

void IPNetworksModel::update_data()
{
	beginResetModel();
	dt->load_data();
	endResetModel();
	emit dataUpdated();
}

int IPNetworksModel::Index(int idx)
{
	if (dt)
		return dt->Index(idx);
	return 0;
}

IPNetworks::IPNetworks(QWidget *parent) :
	QWidget(parent),
	ui(new Ui::IPNetworks)
{
	ui->setupUi(this);

	model = new IPNetworksModel(this);
	ui->hostView->setModel(model);
	
	ui->hostView->horizontalHeader()->setSectionResizeMode(QHeaderView::ResizeToContents);
	ui->hostView->verticalHeader()->setDefaultSectionSize(ui->hostView->verticalHeader()->minimumSectionSize());
	ui->hostView->setSelectionBehavior(QAbstractItemView::SelectRows);

	connect(this, SIGNAL(update_data()), model, SLOT(update_data()));

	connect(ui->installButton, SIGNAL(clicked()), this, SLOT(install_ipn()));
	connect(ui->editButton, SIGNAL(clicked()), this, SLOT(edit_ipn()));
	connect(ui->deleteButton, SIGNAL(clicked()), this, SLOT(delete_ipn()));
}

IPNetworks::~IPNetworks()
{
	delete ui;
}

int IPNetworks::insert_host(int host, QString addr)
{
	QSqlQuery q;
	
	q.prepare("INSERT INTO Hosts(host, name) VALUES(:host, :name)");
	q.bindValue(":host", host);
	q.bindValue(":name", addr);
	q.exec();
	
	q.prepare("SELECT max(id) FROM Hosts");
	if (!q.exec() || !q.next())
		return 0;
	return q.value(0).toInt();
}

int IPNetworks::insert_ipaddr(int id, QString ipaddr, QString gateway, int status)
{
	QSqlQuery q;
	
	q.prepare("INSERT INTO Networks(id_hst,nets,gateway,status) VALUES(:id,:ipaddr,:gateway,:status)");
	q.bindValue(":id",id);
	q.bindValue(":ipaddr",ipaddr);
	q.bindValue(":gateway", gateway);
	q.bindValue(":status", status);
	q.exec();
	
	return 0;
}

void IPNetworks::install_ipn()
{
	QSqlQuery q;

	edit_IPN *ipn = new edit_IPN(this);
	if (ipn->exec()) {
		record r;
		r.host = ipn->Host();
		r.name = ipn->Addr();
		r.ipaddr = ipn->IPAddr();
		r.gateway = ipn->Gateway();
		r.status = ipn->Status();

		q.exec("BEGIN");
		int id = insert_host(r.host, r.name);
		insert_ipaddr(id, r.ipaddr, r.gateway, r.status);
		q.exec("COMMIT");

		emit update_data();
	}
}

void IPNetworks::edit_ipn()
{
	QSqlQuery q;

	int idx = ui->hostView->currentIndex().row();
	int id = model->Index(idx);

	if (id == 0)
		return;

	edit_IPN *ipn = new edit_IPN(this);

	q.exec(tr("SELECT h.id,h.host,h.name,n.nets,n.gateway,n.status FROM hosts h, networks n WHERE h.id = n.id_hst AND n.id = %1").arg(id));
	if (q.next()) {
		ipn->setHost(q.value(1).toInt());
		ipn->setAddr(q.value(2).toString());
		ipn->setIPAddr(q.value(3).toString());
		ipn->setGateway(q.value(4).toString());
		ipn->setStatus(q.value(5).toInt());
	}

	if (ipn->exec()) {
		if (ipn->Host() != q.value(1).toInt() ||
				ipn->Addr() != q.value(2).toString()) {
			QSqlQuery q2;
			q2.prepare("UPDATE hosts SET host=:host, name=:name WHERE id=:id");
			q2.bindValue(":host", ipn->Host());
			q2.bindValue(":name", ipn->Addr());
			q2.bindValue(":id", q.value(0).toInt());
			q2.exec();
		}
		if (ipn->IPAddr() != q.value(3).toString() ||
				ipn->Gateway() != q.value(4).toString() ||
				ipn->Status() != q.value(5).toInt()) {
			QSqlQuery q2;
			q2.prepare("UPDATE Networks SET nets=:addr, gateway=:gate, status=:status WHERE id=:id");
			q2.bindValue(":addr", ipn->IPAddr());
			q2.bindValue(":gate", ipn->Gateway());
			q2.bindValue(":status", ipn->Status());
			q2.bindValue(":id", id);
			q2.exec();
		}
		model->update_data();
	}
}

void IPNetworks::delete_ipn()
{
}

#endif
