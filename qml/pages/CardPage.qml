import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: cardPage

    property alias value: cardLabel.text

    SilicaFlickable {
        width: parent.width
        height: parent.height

        Label {
            id: cardLabel
            width: cardPage.width
            height: cardPage.height
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter

            color: Theme.primaryColor
            wrapMode: Text.WordWrap
            font.pixelSize: (text === "Coffee") ? 120 : 300
        }
    }
}
