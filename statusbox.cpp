#ifndef StatusBox_CPP
#define StatusBox_CPP

#include "statusbox.h"

StatusBox::StatusBox(QWidget *parent) :
	QComboBox(parent)
{
	load_data();
}

StatusBox::~StatusBox()
{
}

void StatusBox::load_data()
{
	addItem("Any", 0);
	addItem("New", 1);
	addItem("Active", 2);
	addItem("Unknown", 3);
	addItem("Unreachable", 4);
	addItem("Bad MAC Address", 5);
	addItem("Uninstalled", 99);
}

int StatusBox::Value()
{
	return itemData(currentIndex()).toInt();
}

void StatusBox::setValue(int val)
{
    int i = findData(val);
    if (i != -1)
        setCurrentIndex(i);
    else
        setCurrentIndex(0);
}

#endif
