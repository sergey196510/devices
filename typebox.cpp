#ifndef TYPEBOX_CPP
#define TYPEBOX_CPP

#include "typebox.h"

TypeBox::TypeBox(QWidget *parent) :
	QComboBox(parent)
{
	load_data();
}

TypeBox::~TypeBox()
{
}

void TypeBox::load_data()
{
	QSqlQuery q;

	clear();

	q.exec("SELECT id,name FROM DeviceType ORDER BY name");
	while (q.next())
		addItem(q.value(1).toString(), q.value(0).toInt());
}

int TypeBox::Value()
{
	return itemData(currentIndex()).toInt();
}

void TypeBox::setValue(int val)
{
    int i = findData(val);
    if (i != -1)
        setCurrentIndex(i);
    else
        setCurrentIndex(0);
}

#endif
