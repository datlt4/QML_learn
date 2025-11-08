import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Flickable and Scroll Bar")

    Flickable {
        id: flickId
        width: parent.width
        height: parent.height
        contentHeight: containerId.implicitHeight
        clip: true
        ScrollBar.vertical: ScrollBar {}

        Column {
            id: containerId
            anchors.fill: parent

            Rectangle {
                height: 200
                width: parent.width
                color: "#042A2B"
            }

            Rectangle {
                height: 200
                width: parent.width
                color: "#5EB1BF"
            }

            Rectangle {
                height: 200
                width: parent.width
                color: "#CDEDF6"
            }

            Rectangle {
                height: 200
                width: parent.width
                color: "#EF7B45"
            }

            Rectangle {
                height: 200
                width: parent.width
                color: "#D84727"
            }

            Rectangle {
                height: 200
                width: parent.width
                color: "#88D18A"
            }

            Rectangle {
                height: 200
                width: parent.width
                color: "#CCDDB7"
            }

            Rectangle {
                height: 200
                width: parent.width
                color: "#6A5B6E"
            }

            Rectangle {
                height: 200
                width: parent.width
                color: "#F0B7B3"
            }

            Rectangle {
                height: 200
                width: parent.width
                color: "#A833B9"
            }
        }

        onContentYChanged: () => {
                               console.log("Scrolled")
                           }
    }
}
