import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Connect Signal To Signal")

    Rectangle {
        id: rectId
        anchors.centerIn: parent
        width: rootId.width * 0.5
        height: rootId.height * 0.5
        color: "#3396D3"
        radius: 15

        signal greet(var message)
        signal forwardGreet(var message)

        function response_your_way(message) {
            console.log("Custom response:", message)
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                rectId.greet("我是越南人。")
            }
        }
    }

    Component.onCompleted: {
        rectId.greet.connect(rectId.forwardGreet)
        rectId.forwardGreet.connect(rectId.response_your_way)
    }
}
