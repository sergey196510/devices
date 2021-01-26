#include "activateip.h"
#include "ui_activateip.h"

ActivateIP::ActivateIP(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::ActivateIP)
{
    ui->setupUi(this);

    ui->hostBox->setFlag(1);
    ui->buttonBox->setEnabled(false);

    connect(ui->typeBox, SIGNAL(currentIndexChanged(int)), SLOT(typeChange()));
    connect(ui->devEdit, SIGNAL(textChanged(QString)), SLOT(typeChange()));
    connect(ui->newButton, SIGNAL(clicked(bool)), SLOT(addType()));
}

ActivateIP::~ActivateIP()
{
    delete ui;
}

void ActivateIP::setData(IPAddressItem &item)
{
    ui->hostBox->setValue(item.Host());
    ui->devEdit->setText(tr("%1").arg(item.Dev()));
    ui->addressEdit->setText(item.Address());
    ui->iplabel->setText(item.Ip().toString());
    ui->maclabel->setText(item.Mac());
    ui->typeBox->setValue(item.Type());
}

IPAddressItem ActivateIP::Data()
{
    IPAddressItem item;

    item.setData(0,
                 ui->hostBox->Value(),
                 ui->devEdit->text().toInt(),
                 ui->iplabel->text(),
                 ui->maclabel->text(),
                 ui->addressEdit->text(),
                 QDate::currentDate(),
                 QDate::currentDate(),
                 2,
                 ui->typeBox->Value());

    return item;
}

void ActivateIP::typeChange()
{
    if (ui->typeBox->Value() > 1 && ui->devEdit->text().toInt() > 0)
        ui->buttonBox->setEnabled(true);
    else
        ui->buttonBox->setEnabled(false);
}

void ActivateIP::addType()
{
    EditDevType *edt = new EditDevType(this);

    if (edt->exec()) {
        QSqlQuery q;
        DevTypesItem *dt = new DevTypesItem;

        dt->setCod(edt->Cod());
        dt->setName(edt->Name());
        int id = dt->Insert();
        ui->typeBox->load_data();
        ui->typeBox->setValue(id);

//        QString cod = edt->Cod();
//        QString name = edt->Name();
//        q.prepare("INSERT INTO devicetype(cod,name) VALUES(:cod,:name)");
//        q.bindValue(":cod", cod);
//        q.bindValue(":name", name);
//        q.exec();
    }
}
