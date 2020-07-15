TEMPLATE = subdirs

SUBDIRS = lib app helper

app.depends = lib
helper.depends = lib

equals(QT_MAJOR_VERSION, 5):lessThan(QT_MINOR_VERSION, 12) {
    message("Cannot use Qt $${QT_VERSION}")
    error("Qt 5.12 and newer is required")
}
