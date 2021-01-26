#ifndef EDIT_IPN_CPP
#define EDIT_IPN_CPP

#include "edit_ipn.h"
#include "ui_edit_ipn.h"

edit_IPN::edit_IPN(QWidget *parent) :
	QDialog(parent),
	ui(new Ui::edit_IPN)
{
	ui->setupUi(this);
//	ui->activeBox->setTristate(true);
}

edit_IPN::~edit_IPN()
{
	delete ui;
}

int edit_IPN::Host()
{
	return ui->hostEdit->text().toInt();
}

QString edit_IPN::Addr()
{
	return ui->addrEdit->text();
}

QString edit_IPN::IPAddr()
{
	return ui->ipEdit->text();
}

QString edit_IPN::Gateway()
{
	return ui->gateEdit->text();
}

int edit_IPN::Status()
{
	return ui->activeBox->checkState() != Qt::Unchecked ? 1 : 0;
}

void edit_IPN::setHost(int host)
{
	ui->hostEdit->setText(tr("%1").arg(host));
}

void edit_IPN::setAddr(QString addr)
{
	ui->addrEdit->setText(addr);
}

void edit_IPN::setIPAddr(QString addr)
{
	ui->ipEdit->setText(addr);
}

void edit_IPN::setGateway(QString addr)
{
	ui->gateEdit->setText(addr);
}

void edit_IPN::setStatus(int status)
{
	ui->activeBox->setCheckState(status ? Qt::Checked : Qt::Unchecked);
}

#endif
