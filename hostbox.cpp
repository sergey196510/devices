#ifndef HOSTBOX_CPP
#define HOSTBOX_CPP

#include "hostbox.h"

HostBox::HostBox(QWidget *parent) :
	QComboBox(parent)
{
    flag=0;
    load_data();
}

HostBox::~HostBox()
{
}

void HostBox::load_data()
{
	QString name;
	QSqlQuery q;

	clear();

    if (!flag)
		addItem("All", 0);

	q.exec("SELECT id,host,name FROM Hosts ORDER BY host");
	while (q.next()) {
		name = QString("%1 %2")
			.arg(q.value(1).toInt())
			.arg(q.value(2).toString());
//		list.append(d);
		addItem(name, q.value(0).toInt());
	}
}

void HostBox::setFlag(int f)
{
    flag = f;
    load_data();
}

int HostBox::Value()
{
	return itemData(currentIndex()).toInt();
}

void HostBox::setValue(int val)
{
    int i = findData(val);
    if (i != -1)
        setCurrentIndex(i);
    else
        setCurrentIndex(0);
}

#endif
