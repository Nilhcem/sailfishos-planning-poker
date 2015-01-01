import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: cardPage
    property string value
    property int fontSize

    SilicaFlickable {
        anchors.fill: parent

        PageHeader {
            id: header
            title: qsTr("Tap to reveal")
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                cardLabel.visible = !cardLabel.visible
                header.title = (cardLabel.visible) ? qsTr("Tap to hide") : qsTr("Tap to reveal")
            }
        }

        Label {
            id: cardLabel
            anchors.centerIn: parent

            color: Theme.primaryColor
            wrapMode: Text.WordWrap
            text: cardPage.value
            font.pixelSize: cardPage.fontSize
            visible: false
        }
    }
}
