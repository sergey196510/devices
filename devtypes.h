#ifndef DEVTYPES_H
#define DEVTYPES_H

#include <QAbstractTableModel>
#include <QTableView>
#include <QTreeView>
#include <QtSql>

class DevTypesItem {
	int id;
	QString cod;
	QString name;
public:
    int Id() { return id; }
    QString Cod() { return cod; }
    QString Name() { return name; }
    void setId(int i) { id = i; }
    void setCod(QString c) { cod = c; }
    void setName(QString n) { name = n; }
    int Insert();
};

class DevTypesList {
	QList<DevTypesItem> list;
	QStringList header;
	
public:
	DevTypesList();
	~DevTypesList();
	int rowCount();
	int columnCount();
	QVariant data(int row, int column, int role = Qt::DisplayRole);
	QVariant headerdata(int);
	void load_data();
    QString Cod(int id);
};

class DevTypesModel : public QAbstractTableModel
{
public:
    DevTypesList *dt;
	explicit DevTypesModel(QObject *parent = 0);
	~DevTypesModel();
	int rowCount(const QModelIndex &parent) const;
	int columnCount(const QModelIndex &parent) const;
	QVariant data(const QModelIndex &, int) const;
    QVariant headerData(int section, Qt::Orientation orientation, int role) const;
};

class DevTypes : public QTreeView
{
public:
    explicit DevTypes(QWidget *parent = 0);
	~DevTypes();
	
private:
	DevTypesModel *model;
};

#endif
