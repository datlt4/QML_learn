import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("Signal Parameters")

    Rectangle {
        anchors.centerIn: parent
        width: rootId.width * 0.5
        height: rootId.height * 0.5
        color: "#B4DEBD"
        radius: 15

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true

            // Syntax variation #1
            // This is on the way to deprecation
            onEntered: {
                console.log("You are in!")
            }

            onExited: {
                console.log("You are out!")
            }

            onClicked: {
                console.log("SINGLE CLICKED")
            }

            // Syntax variation#2: JavasCript Functions
            onDoubleClicked: function (mouse_param) {
                console.log("DOUBLE CLICKED: Position x: " + mouse_param.x + " ,y: " + mouse_param.y)
            }

            //Syntax variation #3 : Arrow functions
            onPressAndHold: mouse => {
                                console.log("Was held: ", mouse.x, mouse.y, mouse.wasHeld)
                            }

            onPressed: mouse => {
                           console.log("Pressed: ", mouse.x, mouse.y)
                       }

            onReleased: mouse => {
                            console.log("Released: ", mouse.x, mouse.y)
                        }
        }
    }
}
