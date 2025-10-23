import QtQuick
import "utilities1.mjs" as Utitilies1

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Javascript Modules")

    Rectangle {
        id: rectId
        width: parent.width * 0.6
        height: parent.height * 0.4
        radius: 25
        color: "#4BB3FD"
        anchors.centerIn: parent

        Text {
            text: qsTr("大家好，我来自越南。")
            font.pointSize: 25
            color: "#00487C"
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log(Utitilies1.combineNum(24, 8))
                console.log(Utitilies1.diffNum(24, 8))
            }
        }
    }
}
