#include "ipaddr.h"

IPAddr::IPAddr()
{
    value = 0;
}

IPAddr::IPAddr(unsigned int val)
{
    value = val;
}

IPAddr::IPAddr(QString str)
{
	QRegExp exp("\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}");

//	qDebug() << exp.pattern();
	if (exp.exactMatch(str)) {
		QStringList lst = str.split("\.");
		value = (lst.at(0).toInt()<<24) + (lst.at(1).toInt()<<16) + (lst.at(2).toInt()<<8) + lst.at(3).toInt();
//	        qDebug() << lst << value;
	}
	else
		value = 0;
//	qDebug() << str << "f";
}

IPAddr::~IPAddr()
{
    value = 0;
}

QString IPAddr::toString()
{
    if (isValid()) {
        return QString("%1.%2.%3.%4")
                .arg(value>>24)
                .arg((value>>16)%256)
                .arg((value>>8)%256)
                .arg(value%256);
    }
    return QString();
}

bool IPAddr::isValid()
{
    if (value > 0) return true;
    return false;
}
