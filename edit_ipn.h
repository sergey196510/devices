#ifndef EDIT_IPN_H
#define EDIT_IPN_H

#include <QDialog>

namespace Ui {
	class edit_IPN;
}

class edit_IPN : public QDialog
{
	Q_OBJECT

public:
	explicit edit_IPN(QWidget *parent = 0);
	~edit_IPN();
	void setHost(int host);
	void setAddr(QString addr);
	void setIPAddr(QString ip);
	void setGateway(QString gate);
	void setStatus(int status);
	int Host();
	QString Addr();
	QString IPAddr();
	QString Gateway();
	int Status();

private:
	Ui::edit_IPN *ui;
};

#endif
