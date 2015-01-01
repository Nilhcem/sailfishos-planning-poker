# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = planningpoker

CONFIG += sailfishapp

SOURCES += src/planningpoker.cpp

OTHER_FILES += qml/planningpoker.qml \
    qml/cover/CoverPage.qml \
    qml/pages/MainPage.qml \
    qml/pages/SecondPage.qml \
    rpm/planningpoker.changes.in \
    rpm/planningpoker.spec \
    rpm/planningpoker.yaml \
    translations/*.ts \
    planningpoker.desktop

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n
TRANSLATIONS += translations/planningpoker-fr.ts
