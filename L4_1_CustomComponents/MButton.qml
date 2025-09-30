import QtQuick

Item {
    id: cBtnId
    width: cRectId.width
    height: cRectId.height
    signal mButtonClicked

    Rectangle {
        id: cRectId
        color: "#EFF7F6"
        height: 50
        width: textInCButton.implicitWidth + 50
        border.color: "#B2F7EF"
        border.width: 4
        radius: 10

        Text {
            id: textInCButton
            text: qsTr("大家好，我是越南人")
            font.pointSize: 30
            anchors.centerIn: parent
            color: "#F2B5D4"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                cBtnId.mButtonClicked() // Emit signal
            }
        }
    }
}
