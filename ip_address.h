#ifndef IPADDESSS_H
#define IPADDESSS_H

#include <QAction>
#include <QWidget>
#include <QMessageBox>
#include <QAbstractTableModel>
#include <QDate>
#include <QtSql>
#include <QTimer>
#include "devtypes.h"
#include "ipaddr.h"

class DeviceItem {
    int id;
    int type;
    QString mac;
    int status;
public:
	int Id() { return id; }
	int Type() { return type; }
	QString Mac() { return mac; }
	int Status() { return status; }
    void setData(int tp, QString _mac, int stat);
    void setType(int tp) { type = tp; }
    void setId(int _id) { id = _id; }
    void Update();
};

class IPAddressItem {
	int id;
	int host;
	int dev;
    IPAddr ip;
	QString address;
	QDate start;
	QDate stop;
	int status;
	DeviceItem device;
public:
	int Id() { return id; }
    int Type() { return device.Type(); }
    int Host() { return host; }
    int Dev() { return dev; }
    QString Address() { return address; }
    IPAddr Ip() const { return ip; }
    QString Mac() { return device.Mac(); }
    QDate Start() { return start; }
    int Status() { return status; }
    DeviceItem Device() { return device; }
    void setData(int _id, int _host, int _dev, IPAddr _ip, QString _mac, QString addr, QDate _start, QDate _stop, int _status, int tp);
    void setStatus(int stat) { status = stat; }
    void setId(int _id) { id = _id; }
    void readById(int id);
    void updateStatus();
};

class IPAddressData
{

public:
	IPAddressData();
	~IPAddressData();
	void load_data(int, int);
	int rowCount();
	int columnCount();
	QVariant data(int row, int column);
	QVariant headerdata(int idx);
    int Index(int idx) {
        IPAddressItem i = list.at(idx);
        return i.Id();
    }

private:
	QStringList statusname;
	QList<IPAddressItem> list;
	QStringList header;
    DevTypesList *dt;
    void sort(int l = 0);
};

class IPAddressModel : public QAbstractTableModel
{
	Q_OBJECT

public:
	IPAddressModel(QObject *parent = 0);
	~IPAddressModel();
	int rowCount(const QModelIndex &index) const;
	int columnCount(const QModelIndex &index) const;
	QVariant data(const QModelIndex &index, int role) const;
	QVariant headerData(int section, Qt::Orientation orientation, int role) const;
	int Index(int idx);
    Qt::ItemFlags flags(const QModelIndex &index) const;
    bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole);

public slots:
	void update_data(int, int);

private:
	IPAddressData *ip;

signals:
	void dataUpdated();
};

namespace Ui {
	class IPAddress;
}

class IPAddress : public QWidget
{
	Q_OBJECT

public:
	QList<QAction*> acts;
    explicit IPAddress(QWidget *parent = 0);
    ~IPAddress();

public slots:
	void reload();
	void Insert();
    void Activate();
	void Remove();
    void Ping();

private:
	int host;
    Ui::IPAddress *ui;
	IPAddressModel *model;
};

#endif
