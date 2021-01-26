#-------------------------------------------------
#
# Project created by QtCreator 2015-03-06T09:12:30
#
#-------------------------------------------------

QT       += core gui sql printsupport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Dev2
TEMPLATE = app


SOURCES += main.cpp\
	dev2.cpp \
	devtypes.cpp\
	edit_devtype.cpp\
	edit_ip.cpp\
	edit_ipn.cpp\
	hostbox.cpp\
	statusbox.cpp\
	ip_address.cpp\
	ip_networks.cpp\
	typebox.cpp \
    activateip.cpp \
    ipaddr.cpp

HEADERS  += dev2.h\
	devtypes.h\
	edit_devtype.h\
	edit_ip.h\
	edit_ipn.h\
	hostbox.h\
	statusbox.h\
	ip_address.h\
	ip_networks.h\
	typebox.h \
    activateip.h \
    ipaddr.h

FORMS    += dev2.ui\
	edit_devtype.ui\
	edit_ip.ui\
	edit_ipn.ui\
	ip_address.ui\
	ip_networks.ui \
    activateip.ui
