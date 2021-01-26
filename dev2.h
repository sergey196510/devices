#ifndef DEV2_H
#define DEV2_H

#include <QMainWindow>
#include <QtSql>
#include <QMessageBox>
#include <QSettings>
#include "devtypes.h"
#include "ip_address.h"
#include "ip_networks.h"

namespace Ui {
class Dev2;
}

class Dev2 : public QMainWindow
{
    Q_OBJECT

public:
    explicit Dev2(QWidget *parent = 0);
    ~Dev2();

private:
    Ui::Dev2 *ui;
    QSqlDatabase db;
    QSettings m_settings;
    bool opendb();
    void closedb();
    void readsettings();
    void writesettings();

private slots:
    void ip_addresses();
    void devtypes();
    void ip_networks();
};

#endif // DEV2_H
