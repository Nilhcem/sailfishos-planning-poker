import QtQuick 2.0
import Sailfish.Silica 1.0
import "../model"

Page {
    id: mainPage

    SilicaFlickable {
        anchors.fill: parent

        PageHeader {
            id: header
            title: qsTr("Planning Poker")
        }

        PullDownMenu {
            MenuItem {
                text: qsTr("About...")
                onClicked: pageStack.push(Qt.resolvedUrl("AboutPage.qml"))
            }
        }

        SilicaGridView {
            id: gridView
            anchors.top: header.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom

            cellWidth: gridView.width / 3
            cellHeight: gridView.height / 5

            model: Cards {}

            delegate: Column {
                Button {
                    text: value;
                    width: gridView.width / 3 - Theme.paddingSmall
                    height: gridView.height / 5
                }
            }
        }
    }
}
