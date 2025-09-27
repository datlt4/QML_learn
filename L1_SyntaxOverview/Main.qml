import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Basic Syntax")
    property string textToShow: "Hello World"

    Row {
        anchors.centerIn: parent
        spacing: 20

        Rectangle {
            id: redRect
            width: 120
            height: 120
            color: "red"
            border.color: "black"
            border.width: 2
            radius: 12
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    textToShow = "Red Rectangle Clicked"
                    console.log(textToShow)
                }
            }
        }

        Rectangle {
            id: orangeRect
            width: 120
            height: 120
            color: "orange"
            border.color: "black"
            border.width: 2
            radius: 12
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    textToShow = "Orange Rectangle Clicked"
                    console.log(textToShow)
                }
            }
        }

        Rectangle {
            id: greenRect
            width: 120
            height: 120
            color: "green"
            border.color: "black"
            border.width: 2
            radius: 12
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    textToShow = "Green Rectangle Clicked"
                    console.log(textToShow)
                }
            }
        }

        Rectangle {
            id: cyanCircle
            width: 120
            height: 120
            color: "cyan"
            border.color: "black"
            border.width: 2
            radius: 60

            Text {
                id: textInCyanCircle
                color: "#FF0000"
                anchors.centerIn: parent
                text: qsTr("Text In Cyan Circle")
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    textToShow = "Cyan Circle Clicked"
                    console.log(textToShow)
                }
            }
        }
    }
}
