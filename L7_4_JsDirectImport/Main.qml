import QtQuick
import "utilities.js" as Utilities

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - JS Direct Import")

    Rectangle {
        color: "#9ECFD4"
        width: rootId.width * 0.4
        height: rootId.height * 0.4
        anchors.centerIn: parent
        radius: 25

        MouseArea{
            anchors.fill: parent
            onClicked: {
                Utilities.greeting()
            }
        }
    }
}
