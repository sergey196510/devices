#ifndef StatusBox_H
#define StatusBox_H

#include <QComboBox>
#include <QtSql>

class StatusBox : public QComboBox
{
public:
	StatusBox(QWidget *parent = 0);
	~StatusBox();
	void load_data();
	int Value();
	void setValue(int val);
};

#endif