#-------------------------------------------------
#
# Project created by QtCreator 2015-11-27T17:47:06
#
#-------------------------------------------------

QT       -= gui

TARGET = MathFunctions
TEMPLATE = lib
CONFIG += staticlib

SOURCES += mathfunctions.cpp

HEADERS += mathfunctions.h
unix {
    target.path = /usr/lib
    INSTALLS += target
}
