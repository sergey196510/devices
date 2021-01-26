#ifndef IPADDR_H
#define IPADDR_H

#include <QObject>
#include <QDebug>

class IPAddr
{
    unsigned int value;
public:
    IPAddr();
    IPAddr(unsigned int val);
    IPAddr(QString str);
    ~IPAddr();
    unsigned int toInt() { return value; }
    QString toString();
    bool isValid();
};

#endif // IPADDR_H
