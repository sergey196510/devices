#ifndef DEVTYPES_CPP
#define DEVTYPES_CPP

#include <devtypes.h>

int DevTypesItem::Insert()
{
    QSqlQuery q;

    q.prepare("INSERT INTO devicetype(cod,name) VALUES(:cod,:name)");
    q.bindValue(":cod", cod);
    q.bindValue(":name", name);
    q.exec();

    q.exec("SELECT MAX(id) FROM DeviceType");
    if (q.next())
        return q.value(0).toInt();
    return 0;
}

DevTypesList::DevTypesList()
{
	header << "Id" << "Cod" << "Name";
	load_data();
}

DevTypesList::~DevTypesList()
{
}

int DevTypesList::rowCount()
{
	return list.size();
}

int DevTypesList::columnCount()
{
	return header.size();
}

QVariant DevTypesList::data(int row, int column, int role)
{
	DevTypesItem i;
	
	if (role == Qt::DisplayRole) {
		if (column == 0) {
			i = list.at(row);
            return i.Id();
		}
		if (column == 1) {
			i = list.at(row);
            return i.Cod();
		}
		if (column == 2) {
			i = list.at(row);
            return i.Name();
		}
	}
	return QVariant();
}

QVariant DevTypesList::headerdata(int row)
{
    return header.at(row);
}

void DevTypesList::load_data()
{
	QSqlQuery q;
	DevTypesItem i;
	
	list.clear();

    q.exec("SELECT id,name,cod FROM devicetype ORDER BY name");
    while (q.next()) {
        i.setId(q.value(0).toInt());
        i.setName(q.value(1).toString());
        i.setCod(q.value(2).toString());
//        qDebug() << i.name;
		list.append(i);
	}
}

QString DevTypesList::Cod(int id)
{
    QList<DevTypesItem>::iterator i;

    for (i = list.begin(); i != list.end(); i++) {
        DevTypesItem it = *i;
        if (it.Id() == id)
            return it.Cod();
    }
    return QString();
}

DevTypesModel::DevTypesModel(QObject *parent) :
QAbstractTableModel(parent)
{
    dt = new DevTypesList;
}

DevTypesModel::~DevTypesModel()
{
	delete dt;
}

int DevTypesModel::rowCount(const QModelIndex &idx) const
{
    if (idx.row() < dt->rowCount())
        return dt->rowCount();
    return 0;
}

int DevTypesModel::columnCount(const QModelIndex &idx) const
{
    if (idx.column() < dt->columnCount())
        return dt->columnCount();
    return 0;
}

QVariant DevTypesModel::data(const QModelIndex &index, int role) const
{
	return dt->data(index.row(), index.column(), role);
}

QVariant DevTypesModel::headerData(int section, Qt::Orientation orientation, int role) const
{
    if (orientation == Qt::Horizontal && role == Qt::DisplayRole)
        return dt->headerdata(section);
    return QVariant();
}

DevTypes::DevTypes(QWidget *parent) :
QTreeView(parent)
{
	model = new DevTypesModel(this);
    this->setModel(model);

//    this->header()->setSectionResizeMode(QHeaderView::ResizeToContents);
//	this->verticalHeader()->setDefaultSectionSize(this->verticalHeader()->minimumSectionSize());
    this->setSelectionBehavior(QAbstractItemView::SelectRows);
    this->setAlternatingRowColors(true);
    this->hideColumn(0);

}

DevTypes::~DevTypes()
{
}

#endif
