#############################################################################
# Makefile for building: Dev2
# Generated by qmake (3.0) (Qt 5.6.1)
# Project:  Dev2.pro
# Template: app
# Command: /usr/lib64/qt5/bin/qmake -o Makefile Dev2.pro
#############################################################################

MAKEFILE      = Makefile

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_PRINTSUPPORT_LIB -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_SQL_LIB -DQT_CORE_LIB
CFLAGS        = -pipe -O2 -Wall -W -D_REENTRANT -fPIC $(DEFINES)
CXXFLAGS      = -pipe -O2 -std=gnu++0x -Wall -W -D_REENTRANT -fPIC $(DEFINES)
INCPATH       = -I. -isystem /usr/include/qt5 -isystem /usr/include/qt5/QtPrintSupport -isystem /usr/include/qt5/QtWidgets -isystem /usr/include/qt5/QtGui -isystem /usr/include/qt5/QtSql -isystem /usr/include/qt5/QtCore -I. -I. -I/usr/lib64/qt5/mkspecs/linux-g++
QMAKE         = /usr/lib64/qt5/bin/qmake
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = install -m 644 -p
INSTALL_PROGRAM = install -m 755 -p
INSTALL_DIR   = cp -f -R
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
TAR           = tar -cf
COMPRESS      = gzip -9f
DISTNAME      = Dev21.0.0
DISTDIR = /home/lsi/projects/Dev2/.tmp/Dev21.0.0
LINK          = g++
LFLAGS        = -Wl,-O1
LIBS          = $(SUBLIBS) -lQt5PrintSupport -lQt5Widgets -lQt5Gui -lQt5Sql -lQt5Core -lGL -lpthread 
AR            = ar cqs
RANLIB        = 
SED           = sed
STRIP         = strip

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp \
		dev2.cpp \
		devtypes.cpp \
		edit_devtype.cpp \
		edit_ip.cpp \
		edit_ipn.cpp \
		hostbox.cpp \
		statusbox.cpp \
		ip_address.cpp \
		ip_data.cpp \
		ip_networks.cpp \
		typebox.cpp \
		activateip.cpp moc_dev2.cpp \
		moc_edit_devtype.cpp \
		moc_edit_ip.cpp \
		moc_edit_ipn.cpp \
		moc_ip_address.cpp \
		moc_ip_networks.cpp \
		moc_activateip.cpp
OBJECTS       = main.o \
		dev2.o \
		devtypes.o \
		edit_devtype.o \
		edit_ip.o \
		edit_ipn.o \
		hostbox.o \
		statusbox.o \
		ip_address.o \
		ip_data.o \
		ip_networks.o \
		typebox.o \
		activateip.o \
		moc_dev2.o \
		moc_edit_devtype.o \
		moc_edit_ip.o \
		moc_edit_ipn.o \
		moc_ip_address.o \
		moc_ip_networks.o \
		moc_activateip.o
DIST          = /usr/lib64/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib64/qt5/mkspecs/common/unix.conf \
		/usr/lib64/qt5/mkspecs/common/linux.conf \
		/usr/lib64/qt5/mkspecs/common/sanitize.conf \
		/usr/lib64/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib64/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib64/qt5/mkspecs/common/g++-base.conf \
		/usr/lib64/qt5/mkspecs/common/g++-unix.conf \
		/usr/lib64/qt5/mkspecs/qconfig.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_Attica.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_BluezQt.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KActivities.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KArchive.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KAuth.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KBookmarks.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KCMUtils.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KCodecs.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KCompletion.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KConfigCore.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KConfigGui.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KConfigWidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KCoreAddons.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KCrash.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KDBusAddons.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KDeclarative.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KDESu.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KDEWebKit.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KDNSSD.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KEmoticons.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KGlobalAccel.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KGuiAddons.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KHtml.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KI18n.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KIconThemes.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KIdleTime.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KIOCore.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KIOFileWidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KIOGui.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KIOWidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KItemModels.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KItemViews.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KJobWidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KJS.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KJSApi.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KJsEmbed.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KNewStuff.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KNotifications.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KNotifyConfig.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KNTLM.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KParts.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KPeople.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KPeopleWidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KPlotting.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KPty.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KrossCore.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KrossUi.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KRunner.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KScreen.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KService.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KTextEditor.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KTextWidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KUnitConversion.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KWallet.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KWaylandClient.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KWaylandServer.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KWidgetsAddons.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KWindowSystem.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KXmlGui.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KXmlRpcClient.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_clucene_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_designer.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_designer_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_designercomponents_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_help.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_help_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_multimedia.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_multimedia_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_multimediawidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_multimediawidgets_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qml.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qml_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qmltest.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qmltest_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quick.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quick_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quickparticles_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quickwidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quickwidgets_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_script.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_script_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_scripttools.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_scripttools_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_svg.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_svg_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_uiplugin.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_uitools.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_uitools_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webkit.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webkit_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webkitwidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webkitwidgets_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_x11extras.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_x11extras_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_xmlpatterns.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_xmlpatterns_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_NetworkManagerQt.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_phonon4qt5.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_QuickAddons.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_Solid.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_SonnetCore.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_SonnetUi.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_ThreadWeaver.pri \
		/usr/lib64/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib64/qt5/mkspecs/features/qt_config.prf \
		/usr/lib64/qt5/mkspecs/linux-g++/qmake.conf \
		/usr/lib64/qt5/mkspecs/features/spec_post.prf \
		/usr/lib64/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib64/qt5/mkspecs/features/default_pre.prf \
		/usr/lib64/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib64/qt5/mkspecs/features/default_post.prf \
		/usr/lib64/qt5/mkspecs/features/warn_on.prf \
		/usr/lib64/qt5/mkspecs/features/qt.prf \
		/usr/lib64/qt5/mkspecs/features/resources.prf \
		/usr/lib64/qt5/mkspecs/features/moc.prf \
		/usr/lib64/qt5/mkspecs/features/unix/opengl.prf \
		/usr/lib64/qt5/mkspecs/features/uic.prf \
		/usr/lib64/qt5/mkspecs/features/unix/thread.prf \
		/usr/lib64/qt5/mkspecs/features/file_copies.prf \
		/usr/lib64/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib64/qt5/mkspecs/features/exceptions.prf \
		/usr/lib64/qt5/mkspecs/features/yacc.prf \
		/usr/lib64/qt5/mkspecs/features/lex.prf \
		Dev2.pro dev2.h \
		devtypes.h \
		edit_devtype.h \
		edit_ip.h \
		edit_ipn.h \
		hostbox.h \
		statusbox.h \
		ip_address.h \
		ip_data.h \
		ip_networks.h \
		typebox.h \
		activateip.h main.cpp \
		dev2.cpp \
		devtypes.cpp \
		edit_devtype.cpp \
		edit_ip.cpp \
		edit_ipn.cpp \
		hostbox.cpp \
		statusbox.cpp \
		ip_address.cpp \
		ip_data.cpp \
		ip_networks.cpp \
		typebox.cpp \
		activateip.cpp
QMAKE_TARGET  = Dev2
DESTDIR       = 
TARGET        = Dev2


first: all
####### Build rules

$(TARGET): ui_dev2.h ui_edit_devtype.h ui_edit_ip.h ui_edit_ipn.h ui_ip_address.h ui_ip_networks.h ui_activateip.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: Dev2.pro /usr/lib64/qt5/mkspecs/linux-g++/qmake.conf /usr/lib64/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib64/qt5/mkspecs/common/unix.conf \
		/usr/lib64/qt5/mkspecs/common/linux.conf \
		/usr/lib64/qt5/mkspecs/common/sanitize.conf \
		/usr/lib64/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib64/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib64/qt5/mkspecs/common/g++-base.conf \
		/usr/lib64/qt5/mkspecs/common/g++-unix.conf \
		/usr/lib64/qt5/mkspecs/qconfig.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_Attica.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_BluezQt.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KActivities.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KArchive.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KAuth.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KBookmarks.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KCMUtils.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KCodecs.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KCompletion.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KConfigCore.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KConfigGui.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KConfigWidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KCoreAddons.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KCrash.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KDBusAddons.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KDeclarative.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KDESu.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KDEWebKit.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KDNSSD.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KEmoticons.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KGlobalAccel.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KGuiAddons.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KHtml.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KI18n.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KIconThemes.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KIdleTime.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KIOCore.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KIOFileWidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KIOGui.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KIOWidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KItemModels.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KItemViews.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KJobWidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KJS.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KJSApi.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KJsEmbed.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KNewStuff.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KNotifications.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KNotifyConfig.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KNTLM.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KParts.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KPeople.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KPeopleWidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KPlotting.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KPty.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KrossCore.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KrossUi.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KRunner.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KScreen.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KService.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KTextEditor.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KTextWidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KUnitConversion.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KWallet.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KWaylandClient.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KWaylandServer.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KWidgetsAddons.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KWindowSystem.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KXmlGui.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_KXmlRpcClient.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_clucene_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_designer.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_designer_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_designercomponents_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_help.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_help_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_multimedia.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_multimedia_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_multimediawidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_multimediawidgets_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qml.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qml_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qmltest.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qmltest_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quick.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quick_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quickparticles_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quickwidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quickwidgets_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_script.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_script_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_scripttools.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_scripttools_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_svg.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_svg_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_uiplugin.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_uitools.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_uitools_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webkit.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webkit_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webkitwidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_webkitwidgets_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_x11extras.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_x11extras_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_xmlpatterns.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_xmlpatterns_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_NetworkManagerQt.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_phonon4qt5.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_QuickAddons.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_Solid.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_SonnetCore.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_SonnetUi.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_ThreadWeaver.pri \
		/usr/lib64/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib64/qt5/mkspecs/features/qt_config.prf \
		/usr/lib64/qt5/mkspecs/linux-g++/qmake.conf \
		/usr/lib64/qt5/mkspecs/features/spec_post.prf \
		/usr/lib64/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib64/qt5/mkspecs/features/default_pre.prf \
		/usr/lib64/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib64/qt5/mkspecs/features/default_post.prf \
		/usr/lib64/qt5/mkspecs/features/warn_on.prf \
		/usr/lib64/qt5/mkspecs/features/qt.prf \
		/usr/lib64/qt5/mkspecs/features/resources.prf \
		/usr/lib64/qt5/mkspecs/features/moc.prf \
		/usr/lib64/qt5/mkspecs/features/unix/opengl.prf \
		/usr/lib64/qt5/mkspecs/features/uic.prf \
		/usr/lib64/qt5/mkspecs/features/unix/thread.prf \
		/usr/lib64/qt5/mkspecs/features/file_copies.prf \
		/usr/lib64/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib64/qt5/mkspecs/features/exceptions.prf \
		/usr/lib64/qt5/mkspecs/features/yacc.prf \
		/usr/lib64/qt5/mkspecs/features/lex.prf \
		Dev2.pro \
		/usr/lib64/libQt5PrintSupport.prl \
		/usr/lib64/libQt5Widgets.prl \
		/usr/lib64/libQt5Gui.prl \
		/usr/lib64/libQt5Sql.prl \
		/usr/lib64/libQt5Core.prl
	$(QMAKE) -o Makefile Dev2.pro
/usr/lib64/qt5/mkspecs/features/spec_pre.prf:
/usr/lib64/qt5/mkspecs/common/unix.conf:
/usr/lib64/qt5/mkspecs/common/linux.conf:
/usr/lib64/qt5/mkspecs/common/sanitize.conf:
/usr/lib64/qt5/mkspecs/common/gcc-base.conf:
/usr/lib64/qt5/mkspecs/common/gcc-base-unix.conf:
/usr/lib64/qt5/mkspecs/common/g++-base.conf:
/usr/lib64/qt5/mkspecs/common/g++-unix.conf:
/usr/lib64/qt5/mkspecs/qconfig.pri:
/usr/lib64/qt5/mkspecs/modules/qt_Attica.pri:
/usr/lib64/qt5/mkspecs/modules/qt_BluezQt.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KActivities.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KArchive.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KAuth.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KBookmarks.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KCMUtils.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KCodecs.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KCompletion.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KConfigCore.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KConfigGui.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KConfigWidgets.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KCoreAddons.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KCrash.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KDBusAddons.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KDeclarative.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KDESu.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KDEWebKit.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KDNSSD.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KEmoticons.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KGlobalAccel.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KGuiAddons.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KHtml.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KI18n.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KIconThemes.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KIdleTime.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KIOCore.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KIOFileWidgets.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KIOGui.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KIOWidgets.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KItemModels.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KItemViews.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KJobWidgets.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KJS.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KJSApi.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KJsEmbed.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KNewStuff.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KNotifications.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KNotifyConfig.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KNTLM.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KParts.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KPeople.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KPeopleWidgets.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KPlotting.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KPty.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KrossCore.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KrossUi.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KRunner.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KScreen.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KService.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KTextEditor.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KTextWidgets.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KUnitConversion.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KWallet.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KWaylandClient.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KWaylandServer.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KWidgetsAddons.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KWindowSystem.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KXmlGui.pri:
/usr/lib64/qt5/mkspecs/modules/qt_KXmlRpcClient.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_clucene_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_concurrent.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_concurrent_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_core.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_core_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_dbus.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_dbus_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_designer.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_designer_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_designercomponents_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_gui.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_gui_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_help.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_help_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_multimedia.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_multimedia_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_multimediawidgets.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_multimediawidgets_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_network.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_network_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_opengl.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_opengl_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_openglextensions.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_printsupport.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_printsupport_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_qml.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_qml_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_qmldevtools_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_qmltest.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_qmltest_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_quick.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_quick_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_quickparticles_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_quickwidgets.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_quickwidgets_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_script.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_script_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_scripttools.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_scripttools_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_sql.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_sql_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_svg.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_svg_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_testlib.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_testlib_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_uiplugin.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_uitools.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_uitools_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_webkit.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_webkit_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_webkitwidgets.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_webkitwidgets_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_widgets.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_widgets_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_x11extras.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_x11extras_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_xml.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_xml_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_xmlpatterns.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_xmlpatterns_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_NetworkManagerQt.pri:
/usr/lib64/qt5/mkspecs/modules/qt_phonon4qt5.pri:
/usr/lib64/qt5/mkspecs/modules/qt_QuickAddons.pri:
/usr/lib64/qt5/mkspecs/modules/qt_Solid.pri:
/usr/lib64/qt5/mkspecs/modules/qt_SonnetCore.pri:
/usr/lib64/qt5/mkspecs/modules/qt_SonnetUi.pri:
/usr/lib64/qt5/mkspecs/modules/qt_ThreadWeaver.pri:
/usr/lib64/qt5/mkspecs/features/qt_functions.prf:
/usr/lib64/qt5/mkspecs/features/qt_config.prf:
/usr/lib64/qt5/mkspecs/linux-g++/qmake.conf:
/usr/lib64/qt5/mkspecs/features/spec_post.prf:
/usr/lib64/qt5/mkspecs/features/exclusive_builds.prf:
/usr/lib64/qt5/mkspecs/features/default_pre.prf:
/usr/lib64/qt5/mkspecs/features/resolve_config.prf:
/usr/lib64/qt5/mkspecs/features/default_post.prf:
/usr/lib64/qt5/mkspecs/features/warn_on.prf:
/usr/lib64/qt5/mkspecs/features/qt.prf:
/usr/lib64/qt5/mkspecs/features/resources.prf:
/usr/lib64/qt5/mkspecs/features/moc.prf:
/usr/lib64/qt5/mkspecs/features/unix/opengl.prf:
/usr/lib64/qt5/mkspecs/features/uic.prf:
/usr/lib64/qt5/mkspecs/features/unix/thread.prf:
/usr/lib64/qt5/mkspecs/features/file_copies.prf:
/usr/lib64/qt5/mkspecs/features/testcase_targets.prf:
/usr/lib64/qt5/mkspecs/features/exceptions.prf:
/usr/lib64/qt5/mkspecs/features/yacc.prf:
/usr/lib64/qt5/mkspecs/features/lex.prf:
Dev2.pro:
/usr/lib64/libQt5PrintSupport.prl:
/usr/lib64/libQt5Widgets.prl:
/usr/lib64/libQt5Gui.prl:
/usr/lib64/libQt5Sql.prl:
/usr/lib64/libQt5Core.prl:
qmake: FORCE
	@$(QMAKE) -o Makefile Dev2.pro

qmake_all: FORCE


all: Makefile $(TARGET)

dist: distdir FORCE
	(cd `dirname $(DISTDIR)` && $(TAR) $(DISTNAME).tar $(DISTNAME) && $(COMPRESS) $(DISTNAME).tar) && $(MOVE) `dirname $(DISTDIR)`/$(DISTNAME).tar.gz . && $(DEL_FILE) -r $(DISTDIR)

distdir: FORCE
	@test -d $(DISTDIR) || mkdir -p $(DISTDIR)
	$(COPY_FILE) --parents $(DIST) $(DISTDIR)/
	$(COPY_FILE) --parents dev2.h devtypes.h edit_devtype.h edit_ip.h edit_ipn.h hostbox.h statusbox.h ip_address.h ip_data.h ip_networks.h typebox.h activateip.h $(DISTDIR)/
	$(COPY_FILE) --parents main.cpp dev2.cpp devtypes.cpp edit_devtype.cpp edit_ip.cpp edit_ipn.cpp hostbox.cpp statusbox.cpp ip_address.cpp ip_data.cpp ip_networks.cpp typebox.cpp activateip.cpp $(DISTDIR)/
	$(COPY_FILE) --parents dev2.ui edit_devtype.ui edit_ip.ui edit_ipn.ui ip_address.ui ip_networks.ui activateip.ui $(DISTDIR)/


clean: compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


distclean: clean 
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


####### Sub-libraries

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

check: first

benchmark: first

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_moc_header_make_all: moc_dev2.cpp moc_edit_devtype.cpp moc_edit_ip.cpp moc_edit_ipn.cpp moc_ip_address.cpp moc_ip_networks.cpp moc_activateip.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_dev2.cpp moc_edit_devtype.cpp moc_edit_ip.cpp moc_edit_ipn.cpp moc_ip_address.cpp moc_ip_networks.cpp moc_activateip.cpp
moc_dev2.cpp: devtypes.h \
		ip_address.h \
		ip_networks.h \
		edit_ipn.h \
		dev2.h
	/usr/lib64/qt5/bin/moc $(DEFINES) -I/usr/lib64/qt5/mkspecs/linux-g++ -I/home/lsi/projects/Dev2 -I/usr/include/qt5 -I/usr/include/qt5/QtPrintSupport -I/usr/include/qt5/QtWidgets -I/usr/include/qt5/QtGui -I/usr/include/qt5/QtSql -I/usr/include/qt5/QtCore -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include/g++-v4 -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include/g++-v4/x86_64-pc-linux-gnu -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include/g++-v4/backward -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include-fixed -I/usr/include dev2.h -o moc_dev2.cpp

moc_edit_devtype.cpp: edit_devtype.h
	/usr/lib64/qt5/bin/moc $(DEFINES) -I/usr/lib64/qt5/mkspecs/linux-g++ -I/home/lsi/projects/Dev2 -I/usr/include/qt5 -I/usr/include/qt5/QtPrintSupport -I/usr/include/qt5/QtWidgets -I/usr/include/qt5/QtGui -I/usr/include/qt5/QtSql -I/usr/include/qt5/QtCore -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include/g++-v4 -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include/g++-v4/x86_64-pc-linux-gnu -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include/g++-v4/backward -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include-fixed -I/usr/include edit_devtype.h -o moc_edit_devtype.cpp

moc_edit_ip.cpp: ip_data.h \
		edit_ip.h
	/usr/lib64/qt5/bin/moc $(DEFINES) -I/usr/lib64/qt5/mkspecs/linux-g++ -I/home/lsi/projects/Dev2 -I/usr/include/qt5 -I/usr/include/qt5/QtPrintSupport -I/usr/include/qt5/QtWidgets -I/usr/include/qt5/QtGui -I/usr/include/qt5/QtSql -I/usr/include/qt5/QtCore -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include/g++-v4 -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include/g++-v4/x86_64-pc-linux-gnu -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include/g++-v4/backward -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include-fixed -I/usr/include edit_ip.h -o moc_edit_ip.cpp

moc_edit_ipn.cpp: edit_ipn.h
	/usr/lib64/qt5/bin/moc $(DEFINES) -I/usr/lib64/qt5/mkspecs/linux-g++ -I/home/lsi/projects/Dev2 -I/usr/include/qt5 -I/usr/include/qt5/QtPrintSupport -I/usr/include/qt5/QtWidgets -I/usr/include/qt5/QtGui -I/usr/include/qt5/QtSql -I/usr/include/qt5/QtCore -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include/g++-v4 -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include/g++-v4/x86_64-pc-linux-gnu -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include/g++-v4/backward -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include-fixed -I/usr/include edit_ipn.h -o moc_edit_ipn.cpp

moc_ip_address.cpp: ip_address.h
	/usr/lib64/qt5/bin/moc $(DEFINES) -I/usr/lib64/qt5/mkspecs/linux-g++ -I/home/lsi/projects/Dev2 -I/usr/include/qt5 -I/usr/include/qt5/QtPrintSupport -I/usr/include/qt5/QtWidgets -I/usr/include/qt5/QtGui -I/usr/include/qt5/QtSql -I/usr/include/qt5/QtCore -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include/g++-v4 -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include/g++-v4/x86_64-pc-linux-gnu -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include/g++-v4/backward -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include-fixed -I/usr/include ip_address.h -o moc_ip_address.cpp

moc_ip_networks.cpp: edit_ipn.h \
		ip_networks.h
	/usr/lib64/qt5/bin/moc $(DEFINES) -I/usr/lib64/qt5/mkspecs/linux-g++ -I/home/lsi/projects/Dev2 -I/usr/include/qt5 -I/usr/include/qt5/QtPrintSupport -I/usr/include/qt5/QtWidgets -I/usr/include/qt5/QtGui -I/usr/include/qt5/QtSql -I/usr/include/qt5/QtCore -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include/g++-v4 -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include/g++-v4/x86_64-pc-linux-gnu -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include/g++-v4/backward -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include-fixed -I/usr/include ip_networks.h -o moc_ip_networks.cpp

moc_activateip.cpp: edit_devtype.h \
		activateip.h
	/usr/lib64/qt5/bin/moc $(DEFINES) -I/usr/lib64/qt5/mkspecs/linux-g++ -I/home/lsi/projects/Dev2 -I/usr/include/qt5 -I/usr/include/qt5/QtPrintSupport -I/usr/include/qt5/QtWidgets -I/usr/include/qt5/QtGui -I/usr/include/qt5/QtSql -I/usr/include/qt5/QtCore -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include/g++-v4 -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include/g++-v4/x86_64-pc-linux-gnu -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include/g++-v4/backward -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include -I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.3/include-fixed -I/usr/include activateip.h -o moc_activateip.cpp

compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_dev2.h ui_edit_devtype.h ui_edit_ip.h ui_edit_ipn.h ui_ip_address.h ui_ip_networks.h ui_activateip.h
compiler_uic_clean:
	-$(DEL_FILE) ui_dev2.h ui_edit_devtype.h ui_edit_ip.h ui_edit_ipn.h ui_ip_address.h ui_ip_networks.h ui_activateip.h
ui_dev2.h: dev2.ui
	/usr/lib64/qt5/bin/uic dev2.ui -o ui_dev2.h

ui_edit_devtype.h: edit_devtype.ui
	/usr/lib64/qt5/bin/uic edit_devtype.ui -o ui_edit_devtype.h

ui_edit_ip.h: edit_ip.ui \
		hostbox.h \
		statusbox.h \
		typebox.h
	/usr/lib64/qt5/bin/uic edit_ip.ui -o ui_edit_ip.h

ui_edit_ipn.h: edit_ipn.ui
	/usr/lib64/qt5/bin/uic edit_ipn.ui -o ui_edit_ipn.h

ui_ip_address.h: ip_address.ui \
		hostbox.h \
		statusbox.h
	/usr/lib64/qt5/bin/uic ip_address.ui -o ui_ip_address.h

ui_ip_networks.h: ip_networks.ui
	/usr/lib64/qt5/bin/uic ip_networks.ui -o ui_ip_networks.h

ui_activateip.h: activateip.ui \
		typebox.h \
		hostbox.h
	/usr/lib64/qt5/bin/uic activateip.ui -o ui_activateip.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_uic_clean 

####### Compile

main.o: main.cpp dev2.h \
		devtypes.h \
		ip_address.h \
		ip_networks.h \
		edit_ipn.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

dev2.o: dev2.cpp dev2.h \
		devtypes.h \
		ip_address.h \
		ip_networks.h \
		edit_ipn.h \
		ui_dev2.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o dev2.o dev2.cpp

devtypes.o: devtypes.cpp devtypes.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o devtypes.o devtypes.cpp

edit_devtype.o: edit_devtype.cpp edit_devtype.h \
		ui_edit_devtype.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o edit_devtype.o edit_devtype.cpp

edit_ip.o: edit_ip.cpp edit_ip.h \
		ip_data.h \
		ui_edit_ip.h \
		hostbox.h \
		statusbox.h \
		typebox.h \
		edit_devtype.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o edit_ip.o edit_ip.cpp

edit_ipn.o: edit_ipn.cpp edit_ipn.h \
		ui_edit_ipn.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o edit_ipn.o edit_ipn.cpp

hostbox.o: hostbox.cpp hostbox.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o hostbox.o hostbox.cpp

statusbox.o: statusbox.cpp statusbox.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o statusbox.o statusbox.cpp

ip_address.o: ip_address.cpp ip_address.h \
		ui_ip_address.h \
		hostbox.h \
		statusbox.h \
		activateip.h \
		edit_devtype.h \
		edit_ip.h \
		ip_data.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ip_address.o ip_address.cpp

ip_data.o: ip_data.cpp ip_data.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ip_data.o ip_data.cpp

ip_networks.o: ip_networks.cpp ip_networks.h \
		edit_ipn.h \
		ui_ip_networks.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ip_networks.o ip_networks.cpp

typebox.o: typebox.cpp typebox.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o typebox.o typebox.cpp

activateip.o: activateip.cpp activateip.h \
		edit_devtype.h \
		ui_activateip.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o activateip.o activateip.cpp

moc_dev2.o: moc_dev2.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_dev2.o moc_dev2.cpp

moc_edit_devtype.o: moc_edit_devtype.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_edit_devtype.o moc_edit_devtype.cpp

moc_edit_ip.o: moc_edit_ip.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_edit_ip.o moc_edit_ip.cpp

moc_edit_ipn.o: moc_edit_ipn.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_edit_ipn.o moc_edit_ipn.cpp

moc_ip_address.o: moc_ip_address.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_ip_address.o moc_ip_address.cpp

moc_ip_networks.o: moc_ip_networks.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_ip_networks.o moc_ip_networks.cpp

moc_activateip.o: moc_activateip.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_activateip.o moc_activateip.cpp

####### Install

install:  FORCE

uninstall:  FORCE

FORCE:

