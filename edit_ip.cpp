#ifndef EDIT_IP_CPP
#define EDIT_IP_CPP

#include "edit_ip.h"
#include "ui_edit_ip.h"
#include "edit_devtype.h"

edit_IP::edit_IP(int host, QWidget *parent) :
	QDialog(parent),
	ui(new Ui::edit_IP)
{
	ui->setupUi(this);
	if (host) {
        ui->hostBox->setFlag(1);
		ui->hostBox->setValue(host);
	}
	ui->statusBox->setValue(1);

    connect(ui->typeButton, SIGNAL(clicked()), SLOT(insert_type()));
}

edit_IP::~edit_IP()
{
	delete ui;
}

IPAddressItem edit_IP::Data()
{
    IPAddressItem d;

//	d.setStatus(ui->statusBox->Value());

    return d;
}

void edit_IP::setData(IPAddressItem &d)
{
    ui->ipEdit->setText(d.Ip().toString());
    ui->maclabel->setText(d.Mac());
    ui->statusBox->setValue(d.Status());
}

void edit_IP::insert_type()
{
    EditDevType *et = new EditDevType(this);

    if (et->exec()) {
        QSqlQuery q;

        QString cod = et->Cod();
        QString name = et->Name();
        q.prepare("INSERT INTO devicetype(cod,name) VALUES(:cod,:name)");
        q.bindValue(":cod", cod);
        q.bindValue(":name", name);
        q.exec();
        ui->typeBox->load_data();
    }
}

#endif
