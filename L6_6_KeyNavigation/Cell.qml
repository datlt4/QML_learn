import QtQuick

Item {
    property alias text: cellTextId.text
    property alias hasFocus: cellRectId.focus
    property var navUp: null
    property var navDown: null
    property var navLeft: null
    property var navRight: null
    property alias cellId: cellRectId

    implicitHeight: cellRectId.height
    implicitWidth: cellRectId.width

    Rectangle {
        id: cellRectId
        width: 80
        height: 80
        radius: 5
        color: focus ? "#556B2F" : "#8FA31E"
        Text {
            id: cellTextId
            text: qsTr("")
            anchors.centerIn: parent
            font.pointSize: 20
        }

        KeyNavigation.up: navUp
        KeyNavigation.down: navDown
        KeyNavigation.left: navLeft
        KeyNavigation.right: navRight
    }
}
