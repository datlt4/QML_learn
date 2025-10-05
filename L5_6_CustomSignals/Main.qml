import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Custom Signals")

    Rectangle {
        id: rectId
        anchors.centerIn: parent
        width: rootId.width * 0.5
        height: rootId.height * 0.5
        color: "#934790"
        radius: 15

        // Setup the Signal
        signal greet(string message)

        // Signal Handler
        onGreet: message => {
                     console.log("Greeting with message:", message)
                 }

        MouseArea {
            anchors.fill: parent

            onClicked: {
                rectId.greet("我是越南人。")
            }
        }
    }
}
