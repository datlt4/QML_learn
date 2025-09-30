import QtQuick

// import MButton
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Custom Components")
    color: "#F9E9EC"
    // Playing with Row and Column
    Row {
        x: 10
        y: 10
        spacing: 2

        Rectangle {
            color: "red"
            width: 50
            height: 50
        }
        Rectangle {
            color: "green"
            width: 20
            height: 50
        }
        Rectangle {
            color: "blue"
            width: 50
            height: 20
        }
    }

    // Play with Build-in Rect
    Rectangle {
        id: buildInRect
        color: "#FED766"
        x: 10
        y: 70
        height: 50
        width: textInBuildInRect.implicitWidth + 30
        border.color: "#FAC748"
        border.width: 4
        radius: 10

        Text {
            id: textInBuildInRect
            text: qsTr("你好，我是越南人")
            font.pointSize: 30
            anchors.centerIn: parent
            color: "#EA638C"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("你好，我是越南人")
            }
        }
    }

    // Play with Custom MButton
    Column {
        x: 10
        y: 150
        spacing: 10
        MButton {
            id: cBtn1
            onMButtonClicked: {
                console.log("大家好，我是越南人。- cBtn1")
            }
        }

        MButton {
            id: cBtn2
            onMButtonClicked: {
                console.log("大家好，我是越南人。- cBtn2")
            }
        }

        MButton {
            id: cBtn3
            onMButtonClicked: {
                console.log("大家好，我是越南人。- cBtn3")
            }
        }
    }
}
