TEMPLATE = lib
TARGET = cutechess
QT = core
DESTDIR = $$PWD

win32:!static {
    DEFINES += LIB_EXPORT="__declspec(dllexport)"
} else {
    DEFINES += LIB_EXPORT=""
}

include(src/src.pri)
include(components/json/src/json.pri)
include(3rdparty/gtb/src/gtb.pri)
include(res/res.pri)

OBJECTS_DIR = .obj
MOC_DIR = .moc
RCC_DIR = .rcc
