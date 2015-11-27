QT += core
QT -= gui

TARGET = MathFunctionsTest
CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

SOURCES += main.cpp


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../MathFunctions/release/ -lMathFunctions
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../MathFunctions/debug/ -lMathFunctions
else:unix: LIBS += -L$$PWD/../MathFunctions/ -lMathFunctions

INCLUDEPATH += $$PWD/../MathFunctions
DEPENDPATH += $$PWD/../MathFunctions

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../MathFunctions/release/libMathFunctions.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../MathFunctions/debug/libMathFunctions.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../MathFunctions/release/MathFunctions.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../MathFunctions/debug/MathFunctions.lib
else:unix: PRE_TARGETDEPS += $$PWD/../MathFunctions/libMathFunctions.a

CONFIG(release, debug|release): DEFINES += QT_NO_DEBUG_OUTPUT
