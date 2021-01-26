#ifndef IPNETWORKS_H
#define IPNETWORKS_H

#include <QAbstractTableModel>
#include <QWidget>
#include <QtSql>
#include "edit_ipn.h"

struct record {
	int id;
	int host;
	QString name;
	QString ipaddr;
	QString gateway;
	int status;
};

class IPNetworksData
{
	QList<record> list;
	QStringList header;

public:
	IPNetworksData();
	~IPNetworksData();
	int rowCount();
	int columnCount();
	QVariant data(int, int);
	QVariant headerdata(int idx);
	void load_data();
	int Index(int idx) { return list.at(idx).id; }
};

class IPNetworksModel : public QAbstractTableModel
{
	Q_OBJECT

	IPNetworksData *dt;
public:
	IPNetworksModel(QObject *parent = 0);
	int rowCount(const QModelIndex &index) const;
	int columnCount(const QModelIndex &index) const;
	QVariant data(const QModelIndex &index, int role) const;
	QVariant headerData(int section, Qt::Orientation orientation, int role) const;
	int Index(int idx);

public slots:
	void update_data();

signals:
	void dataUpdated();
};

namespace Ui {
	class IPNetworks;
}

class IPNetworks : public QWidget
{
    Q_OBJECT

public:
	explicit IPNetworks(QWidget *parent = 0);
	~IPNetworks();
	
public slots:
	void install_ipn();
	void edit_ipn();
	void delete_ipn();

private:
	Ui::IPNetworks *ui;
	IPNetworksModel *model;
	int insert_host(int host, QString addr);
	int insert_ipaddr(int host, QString ipaddr, QString gateway, int status);
	
signals:
	void update_data();
};

#endif
