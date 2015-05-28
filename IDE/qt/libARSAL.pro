TARGET = arsal
TEMPLATE = lib
CONFIG = static
CONFIG += debug

linux-g++ {
    include(/home/heefan/drone/drone_client/IDE/qt/common.pri)
}

macx{
    include(/Users/heefan/drone/drone_client/IDE/qt/common.pri)
}

SOURCES += \
    $$LibARSAL_src/*.c

HEADERS += \
    $$LibARSAL_src/*.h \
    $$LibARSAL_inc/libARSAL/*.h

INCLUDEPATH += \
    $$LibARSAL_inc \
    $$LibARSALRoot/Build   #config.h

macx {
    LIBS += -L/usr/local/Cellar/openssl/1.0.1j/lib -lssl
}

linux-g++ {
     LIBS += -L/usr/local/lib -lssl -lcrypto -pthreadss
}
