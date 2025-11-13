import QtQuick

Item {
    anchors.fill: parent

    Text {
        text: qsTr("+")
        anchors.top: parent.top
        anchors.left: parent.left
    }
    Text {
        text: qsTr("+")
        anchors.top: parent.top
        anchors.right: parent.right
    }
    Text {
        text: qsTr("+")
        anchors.bottom: parent.bottom
        anchors.left: parent.left
    }
    Text {
        text: qsTr("+")
        anchors.bottom: parent.bottom
        anchors.right: parent.right
    }
}
