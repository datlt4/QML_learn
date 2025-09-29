import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Basic Items")

    property string borderColor: "120B02"

    Item {
        x: 50
        y: 50
        width: 300
        height: 300

        Rectangle {
            anchors.fill: parent
            color: "beige"
            border {
                color: borderColor
                width: 3
            }
            radius: 10
        }

        Text {
            id: textInItem
            text: qsTr("你好，我是越南人")
            anchors.centerIn: parent
            color: "#85752E"
        }

        Rectangle {
            id: redRect
            color: "#fb6f92"
            width: 50
            height: 50
            x: 10
            y: 30
            border {
                color: borderColor
                width: 1
            }
            radius: 5
        }

        Rectangle {
            id: yellowRect
            color: "#F7EF81"
            width: 50
            height: 50
            x: 10
            y: redRect.y + redRect.height + 10
            border {
                color: borderColor
                width: 1
            }
            radius: 5
        }

        Rectangle {
            id: greenRect
            color: "#9FD89D"
            width: 50
            height: 50
            x: 10
            y: yellowRect.y + yellowRect.height + 10
            border {
                color: borderColor
                width: 1
            }
            radius: 5
        }
    }
}
