import QtQuick

Item {
    property alias wBtn: btnId.width
    property alias hBtn: btnId.height
    property alias text: btnTextId.text
    signal btnClicked
    anchors.horizontalCenter: parent.horizontalCenter
    width: btnId.width
    height: btnId.height

    Rectangle {
        id: btnId
        width: btnTextId.implicitWidth + 50
        height: btnTextId.implicitHeight + 20
        color: "#FCDC4D"
        border.color: "#FBB13C"
        border.width: 5
        radius: 7

        Text {
            id: btnTextId
            text: qsTr("大家好，我是越南人")
            color: "#FBB13C"
            font.pointSize: 30
            font.bold: true
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                btnClicked() // Emit signal
            }
        }
    }
}
