#include "dev2.h"
#include "ui_dev2.h"

Dev2::Dev2(QWidget *parent) :
	QMainWindow(parent),
	m_settings("AIST", "Dev2"),
	ui(new Ui::Dev2)
{
	opendb();

	ui->setupUi(this);

	connect(ui->actionIP_Addresses, SIGNAL(triggered()), this, SLOT(ip_addresses()));
	connect(ui->actionIP_Networks, SIGNAL(triggered()), this, SLOT(ip_networks()));
	connect(ui->actionDevice_Types, SIGNAL(triggered()), this, SLOT(devtypes()));

	connect(ui->actionAbout_QT, SIGNAL(triggered()), qApp, SLOT(aboutQt()));
	connect(ui->actionQuit, SIGNAL(triggered()), qApp, SLOT(quit()));
}

Dev2::~Dev2()
{
	delete ui;
}

bool Dev2::opendb()
{
    db = QSqlDatabase::addDatabase("QSQLITE");
    db.setDatabaseName("/home/lsi/projects/Dev2/dev2.db");
    if (!db.open()) {
//        QMessageBox::critical(this, tr("Open database"), tr("Error in open database file"));
        return false;
    }

	QSqlQuery q;

	q.exec("PRAGMAjournal_mode=WAL");

    return true;
}

void Dev2::closedb()
{
	db.close();
}

void Dev2::readsettings()
{
}

void Dev2::writesettings()
{
}

void Dev2::ip_addresses()
{
    IPAddress *ip = new IPAddress(this);
	setCentralWidget(ip);
	ui->mainToolBar->addActions(ip->acts);
	setWindowTitle("List IP Addresses");
}

void Dev2::ip_networks()
{
	IPNetworks *ip = new IPNetworks(this);
	setCentralWidget(ip);
	setWindowTitle("List IP Networks");
}

void Dev2::devtypes()
{
	DevTypes *dp = new DevTypes(this);
	setCentralWidget(dp);
	setWindowTitle("List Device Types");
}
