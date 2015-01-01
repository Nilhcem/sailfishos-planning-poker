import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: aboutPage

    SilicaFlickable {
        id: flickable
        anchors.fill: parent
        contentHeight: column.height

        PageHeader {
            id: header
            title: qsTr("About this app...")
        }

        Column {
            id: column
            anchors.top: header.bottom
            width: parent.width

            Image {
                id: logo
                source: "/usr/share/icons/hicolor/86x86/apps/planningpoker.png"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
            }

            Rectangle {
                id: separator
                height: 20
                anchors.top: logo.bottom
            }

            Column {
                anchors.top: separator.bottom
                width: parent.width

                Label {
                    width: parent.width
                    wrapMode: Text.WordWrap
                    horizontalAlignment: Text.AlignHCenter
                    text: qsTr("<b>Planning Poker</b>")
                }

                Label {
                    width: parent.width
                    wrapMode: Text.WordWrap
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: Theme.fontSizeExtraSmall
                    text: qsTr("Version 1.0")
                }

                Label {
                    width: parent.width
                    wrapMode: Text.WordWrap
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: Theme.fontSizeExtraSmall
                    color: Theme.highlightColor
                    linkColor: Theme.primaryColor
                    text: qsTr("<br />Distributed under the Apache License v2.0<p>Source code available at:</p><a href='https://github.com/Nilhcem/sailfishos-planning-poker'>github.com/Nilhcem/sailfishos-planning-poker</a>")
                    onLinkActivated: Qt.openUrlExternally(link)
                }
            }
        }
    }
}
