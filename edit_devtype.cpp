#ifndef EDIT_DEVTYPE_CPP
#define EDIT_DEVTYPE_CPP

#include "edit_devtype.h"
#include "ui_edit_devtype.h"

EditDevType::EditDevType(QWidget *parent) :
QDialog(parent),
ui(new Ui::EditDevType)
{
	ui->setupUi(this);
}

EditDevType::~EditDevType()
{
	delete ui;
}

QString EditDevType::Cod()
{
    return ui->codEdit->text();
}

QString EditDevType::Name()
{
    return ui->nameEdit->text();
}

#endif
