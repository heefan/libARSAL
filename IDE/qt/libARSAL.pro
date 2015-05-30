linux-g++ {
    include(/home/heefan/drone/drone_client/IDE/qt/common.pri)
}

macx {
    include(/Users/heefan/drone/drone_client/IDE/qt/common.pri)
}

TARGET = arsal
TEMPLATE = lib
CONFIG += static
CONFIG += debug
DESTDIR = $$SdkInstallPath_lib

SOURCES += \
    $$LibARSAL_src/*.c

HEADERS += \
#    $$LibARSAL_src/*.h \
#    $$LibARSAL_inc/libARSAL/*.h

INCLUDEPATH += \
    $$SdkInstallPath_inc \
    $$LibARSAL/Build   #config.h

