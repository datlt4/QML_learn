import QtQuick
import "Utilities1.js" as Utilities1

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Qt.include")

    Rectangle {
        color: "#704C5E"
        width: rootId.width * 0.4
        height: rootId.height * 0.4
        anchors.centerIn: parent
        radius: 25

        MouseArea{
            anchors.fill: parent
            onClicked: {
                Utilities1.greeting()
                console.log("Object:", Utilities1.getObject())
            }
        }
    }
}
