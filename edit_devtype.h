#ifndef EDIT_DEVTYPE_H
#define EDIT_DEVTYPE_H

#include <QDialog>

namespace Ui {
	class EditDevType;
}

class EditDevType : public QDialog
{
	Q_OBJECT
	
public:
	explicit EditDevType(QWidget *parent = 0);
	~EditDevType();
    QString Cod();
    QString Name();
	
private:
	Ui::EditDevType *ui;
};

#endif
