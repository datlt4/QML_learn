import QtQuick
import Buttons

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Modules")

    Column {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 10

        RedButton {
            onBtnClicked: {
                console.log("RED 1 - 大家好，我是越南人")
            }
        }

        RedButton {
            onBtnClicked: {
                console.log("RED 2 - 大家好，我是越南人")
            }
        }

        YellowButton {
            onBtnClicked: {
                console.log("YELLOW 1 - 大家好，我是越南人")
            }
        }

        GreenButton {
            onBtnClicked: {
                console.log("GREEN 1 - 大家好，我是越南人")
            }
        }
    }
}
