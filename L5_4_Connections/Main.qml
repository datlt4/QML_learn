import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Connections")

    Rectangle {
        id: rectId
        anchors.centerIn: parent
        width: rootId.width * 0.5
        height: rootId.height * 0.5
        color: "#34656D"
        radius: 15

        MouseArea {
            id: mouseA
            anchors.fill: parent
        }
    }

    Connections{
        target: mouseA

        function onClicked() {
            console.log("CLICKED")
        }

        function onDoubleClicked(mouse){
            console.log("DOUBLE CLICKED", mouse.x, mouse.y)
        }
    }
}
