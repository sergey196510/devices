#ifndef EDIT_IP_H
#define EDIT_IP_H

#include <QDialog>
#include <QtSql>
#include "ip_address.h"

namespace Ui{
	class edit_IP;
}

class edit_IP : public QDialog
{
	Q_OBJECT

public:
	explicit edit_IP(int host, QWidget *parent = 0);
	~edit_IP();
    void setData(IPAddressItem &data);
    IPAddressItem Data();

public slots:
    void insert_type();

private:
	Ui::edit_IP *ui;
};

#endif
