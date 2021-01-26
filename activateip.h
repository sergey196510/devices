#ifndef ACTIVATEIP_H
#define ACTIVATEIP_H

#include <QDate>
#include <QDialog>
#include "edit_devtype.h"
#include "devtypes.h"
#include "ip_address.h"

namespace Ui {
class ActivateIP;
}

class ActivateIP : public QDialog
{
    Q_OBJECT

public:
    explicit ActivateIP(QWidget *parent = 0);
    ~ActivateIP();
    void setData(IPAddressItem &);
    IPAddressItem Data();
//    void setType(int type);
//    void setIP(QString ip);
//    void setMAC(QString mac);

private:
    Ui::ActivateIP *ui;

private slots:
    void typeChange();
    void addType();
};

#endif // ACTIVATEIP_H
