#-------------------------------------------------
#
# Project created by QtCreator 2012-01-15T01:33:43
#
#-------------------------------------------------

QT += core gui


win32:CONFIG(debug, debug|release){
    system("..\\svn_template\\SubWCRev.exe ..\\..\\ ..\\svn_template\\svnrev_template.h ..\\svn_template\\svnrev.h")
}

unix:CONFIG(debug, debug|release){
    system("../svn_template/makesvnrev.sh")
}

CONFIG(debug, debug|release){
    DEFINES += DEBUG
}
CONFIG(release, release|debug){
    DEFINES -= DEBUG
}

TARGET = SS_SaveEditor
TEMPLATE = app
INCLUDEPATH += include \
           ../LibWiiSave/include \
           ../libzelda/include
unix:LIBS += -L../LibWiiSave/lib/Linux -lWiiSave -L../libzelda/lib/Linux -lzelda
win32:LIBS +=  -L../LibWiiSave/lib/Win32 -lWiiSave -L../libzelda/lib/Win32 -lzelda

LIBS +=

SOURCES += \
    src/main.cpp\
    src/mainwindow.cpp \
    src/newgamedialog.cpp \
    src/aboutdialog.cpp \
    src/fileinfodialog.cpp \
    src/skywardswordfile.cpp \
    src/exportquestdialog.cpp \
    src/wiikeys.cpp \
    src/preferencesdialog.cpp \
    src/checksum.cpp \
    src/common.cpp \
    src/qhexedit2/xbytearray.cpp \
    src/qhexedit2/qhexedit_p.cpp \
    src/qhexedit2/qhexedit.cpp \
    src/qhexedit2/commands.cpp \
    src/newfiledialog.cpp \
	src/gameinfowidget.cpp \
    src/settingsmanager.cpp

HEADERS  += \
    include/mainwindow.h \
    include/igamefile.h \
    include/newgamedialog.h \
    include/aboutdialog.h \
    include/fileinfodialog.h \
    include/skywardswordfile.h \
    include/exportquestdialog.h \
    include/wiikeys.h \
    include/preferencesdialog.h \
    include/checksum.h \
    include/common.h \
    include/qhexedit2/xbytearray.h \
    include/qhexedit2/qhexedit_p.h \
    include/qhexedit2/qhexedit.h \
    include/qhexedit2/commands.h \
    include/newfiledialog.h \
    include/gameinfowidget.h \
    include/settingsmanager.h

FORMS    += \
    forms/mainwindow.ui \
    forms/newgamedialog.ui \
    forms/aboutdialog.ui \
    forms/fileinfodialog.ui \
    forms/exportquestdialog.ui \
    forms/preferencesdialog.ui \
    forms/newfiledialog.ui \
	forms/gameinfowidget.ui

RESOURCES += \
    resources/resources.qrc

OTHER_FILES += \
    resources/bugs/Woodland Rhino Bettle.png \
    resources/bugs/Volcanic Ladybug.png \
    resources/bugs/Starry Firefly.png \
    resources/bugs/Sky Stag Beetle.png \
    resources/bugs/Sand Cicada.png \
    resources/bugs/Loft Mantis.png \
    resources/bugs/Lanayru Ant.png \
    resources/bugs/Gerudo Dragonfly.png \
    resources/bugs/Faron Grasshopper.png \
    resources/bugs/Eldin Roller.png \
    resources/bugs/Deku Hornet.png \
    resources/bugs/Blessed Butterfly.png \
    resources/equipment/Bags/Seed Satchel Small.png \
    resources/equipment/Bags/Seed Satchel Medium.png \
    resources/equipment/Bags/Seed Satchel Large.png \
    resources/equipment/Bags/Bomb Bag Small.png \
    resources/equipment/Bags/Bomb Bag Medium.png \
    resources/equipment/Bags/Bomb Bag Large.png \
    resources/equipment/Quivers/Quiver Small.png \
    resources/equipment/Quivers/Quiver Medium.png \
    resources/equipment/Quivers/Quiver Large.png \
    resources/equipment/Shields/Wooden Shield.png \
    resources/equipment/Shields/Sacred Shield.png \
    resources/equipment/Shields/Reinforced Shield.png \
    resources/equipment/Shields/Iron Shield.png \
    resources/equipment/Shields/Hylian Shield.png \
    resources/equipment/Shields/Goddess Shield.png \
    resources/equipment/Shields/Fortified Shield.png \
    resources/equipment/Shields/Divine Shield.png \
    resources/equipment/Shields/Braced Shield.png \
    resources/equipment/Shields/Banded Shield.png \
    resources/equipment/Swords/True Master Sword.png \
    resources/equipment/Swords/Practice Sword.png \
    resources/equipment/Swords/Master Sword.png \
    resources/equipment/Swords/Goddess White Sword.png \
    resources/equipment/Swords/Goddess Sword Icon.png \
    resources/equipment/Swords/Goddess Long Sword.png \
    resources/equipment/Wallets/Tycoo Wallet.png \
    resources/equipment/Wallets/Small Wallet.png \
    resources/equipment/Wallets/Mediu Wallet.png \
    resources/equipment/Wallets/Giant Wallet.png \
    resources/equipment/Wallets/Big Wallet.png \
    resources/mainicon.rc \
    resources/styleWin32.css \
    resources/styleUnix.css

TRANSLATIONS += \
    resources/languages/ja.ts

win32{
    RC_FILE = resources/mainicon.rc
}
