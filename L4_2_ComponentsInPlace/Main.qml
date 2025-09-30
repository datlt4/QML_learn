import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Custom Components in Place")

    // Method 1: Use the Component together with Loader
    Component {
        id: btnComponent
        Item {
            id: cBtnId
            width: cRectId.width
            height: cRectId.height
            signal mButtonClicked
            property alias mButtonText: textInCButton.text

            Rectangle {
                id: cRectId
                color: "#F4E3B2"
                height: 50
                width: textInCButton.implicitWidth + 50
                border.color: "#CF5C36"
                border.width: 4
                radius: 10

                Text {
                    id: textInCButton
                    text: qsTr("大家好，我是越南人")
                    font.pointSize: 30
                    anchors.centerIn: parent
                    color: "#050517"
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        cBtnId.mButtonClicked() // Emit signal
                    }
                }
            }
        }
    }

    // Method 2: Show inlined components as in component MButton: Rectangle
    component MButton2: Rectangle {
        id: cBtnId
        color: "#F7FE72"
        height: textInCButton.implicitHeight + 20
        width: textInCButton.implicitWidth + 50
        border.color: "#8FF7A7"
        border.width: 4
        radius: 10
        property alias mButtonText: textInCButton.text
        signal mButtonClicked

        Text {
            id: textInCButton
            text: qsTr("大家好，我是越南人")
            font.pointSize: 30
            anchors.centerIn: parent
            color: "#757761"
            onTextChanged: {
                console.log("Text changed to:", mButtonText)
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                cBtnId.mButtonClicked() // Emit signal
            }
        }
    }

    // Usage
    Column {
        spacing: 10
        anchors.centerIn: parent
        Loader {
            id: firstButton
            sourceComponent: btnComponent
            onLoaded: {
                var customButton = firstButton.item
                customButton.mButtonClicked.connect(() => {
                                                        customButton.mButtonText = "我正在学习中文"
                                                        console.log("我正在学习中文")
                                                    })
            }
        }

        Loader {
            id: secondButton
            sourceComponent: btnComponent
            onLoaded: {
                var customButton = secondButton.item
                customButton.mButtonClicked.connect(() => {
                                                        customButton.mButtonText = "我正在写汉字"
                                                        console.log("我正在写汉字")
                                                    })
            }
        }

        MButton2 {
            onMButtonClicked: {
                mButtonText = "我正在学习中文"
            }
        }

        MButton2 {
            onMButtonClicked: {
                mButtonText = "我正在写汉字"
            }
        }
    }
}
