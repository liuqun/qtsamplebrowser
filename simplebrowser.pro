TEMPLATE = app
TARGET = simplebrowser
QT += widgets webenginewidgets
requires(qtConfig(listwidget))

!gcc: QMAKE_CXXFLAGS+="/utf-8"
win32: RC_ICONS=logo.ico

HEADERS = \
    languagechooser.h \
    mainwindow.h

SOURCES = \
    languagechooser.cpp \
    main.cpp \
    mainwindow.cpp

RESOURCES += \
    i18n.qrc

TRANSLATIONS += \
    translations/i18n_en.ts \
    translations/i18n_zh.ts


HEADERS += \
    browser.h \
    browserwindow.h \
    downloadmanagerwidget.h \
    downloadwidget.h \
    languagechooser.h \
    mainwindow.h \
    tabwidget.h \
    webpage.h \
    webpopupwindow.h \
    webview.h

SOURCES += \
    browser.cpp \
    browserwindow.cpp \
    downloadmanagerwidget.cpp \
    downloadwidget.cpp \
    languagechooser.cpp \
    mainwindow.cpp \
    tabwidget.cpp \
    webpage.cpp \
    webpopupwindow.cpp \
    webview.cpp

FORMS += \
    certificateerrordialog.ui \
    passworddialog.ui \
    downloadmanagerwidget.ui \
    downloadwidget.ui

RESOURCES += data/simplebrowser.qrc

## install
#target.path = $$[QT_INSTALL_EXAMPLES]/webenginewidgets/simplebrowser
#INSTALLS += target
