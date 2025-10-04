import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("Signal Handlers")

    Rectangle {
        anchors.centerIn: parent
        width: rootId.width * 0.5
        height: rootId.height * 0.5
        color: "#F5564E"
        radius: 15

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true

            onClicked: mouse => {
                           console.log("Clicked on the rectangle", mouse.x, mouse.y)
                       }

            onDoubleClicked: mouse => {
                                 console.log("Double Clicked on the rectangle", mouse.x, mouse.y)
                             }

            onEntered: {
                           console.log("You are in!")
                       }

            onExited: {
                          console.log("You are out!")
                      }

            onWheel: mouse => {
                         console.log("You are out!", mouse.x, mouse.y)
                     }

            onReleased: mouse => {
                            console.log("Released at x:", mouse.x, ", y:", mouse.y)
                        }

            onPressAndHold: mouse => {
                                console.log("Was held: ", mouse.x, mouse.y, mouse.wasHeld)
                            }

            onPositionChanged: mouse => {
                                   console.log("Position changed, x:", mouse.x, ", y: ", mouse.y)
                               }
        }
    }
}
