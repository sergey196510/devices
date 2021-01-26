#ifndef HOSTBOX_H
#define HOSTBOX_H

#include <QComboBox>
#include <QtSql>

class HostBox : public QComboBox
{
public:
    HostBox(QWidget *parent = 0);
	~HostBox();
	void load_data();
    void setFlag(int f);
	int Value();
	void setValue(int val);

private:
    int flag;
};

#endif
