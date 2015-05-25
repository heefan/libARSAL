TARGET = libarsal
TEMPLATE = lib
CONFIG = static

#DEFINES += LIBARDISCOVERY_LIBRARY

include(/Users/heefan/drone/drone_client/IDE/qt/common.pri)

SOURCES += \
    $$LibARSAL_src/*.c

HEADERS += \
    $$LibARSAL_src/*.h \
    $$LibARSAL_inc/libARSAL/*.h

INCLUDEPATH = \
    $$LibARSAL_inc

#unix {
#    target.path = /usr/lib
#    INSTALLS += target
#}



INCLUDEPATH += \
    /usr/include/ \
    /usr/local/include \
    $$LibARSAL_inc \
    $$LibARSALRoot/Build   #config.h

LIBS += -L/usr/local/Cellar/openssl/1.0.1j/lib -lssl
