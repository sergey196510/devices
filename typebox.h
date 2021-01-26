#ifndef TYPEBOX_H
#define TYPEBOX_H

#include <QComboBox>
#include <QtSql>

class TypeBox : public QComboBox
{
public:
	TypeBox(QWidget *parent = 0);
	~TypeBox();
	void load_data();
	int Value();
	void setValue(int val);
};

#endif