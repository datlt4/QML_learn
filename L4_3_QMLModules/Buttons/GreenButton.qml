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
        color: "#7AC74F"
        border.color: "#5B8C5A"
        border.width: 5
        radius: 7

        Text {
            id: btnTextId
            text: qsTr("我正在学习中文")
            color: "#FAFFFD"
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
