import QtQuick

Item {
    property alias color: rectId.color
    property alias text: rectText.text
    property alias textColor: rectText.color
    implicitHeight: rectId.height
    implicitWidth: rectId.width

    Rectangle {
        id: rectId
        width: 100
        height: 100
        radius: 20

        Text {
            id: rectText
            font.pointSize: 30
            anchors.centerIn: parent
        }
    }
}
