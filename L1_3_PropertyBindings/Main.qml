import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Property Bindings")

    Rectangle {
        id: grayRect
        color: "gray"
        width: 10
        height: width * 1.5
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Row {
        id: rowBtnId
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        spacing: 5
        property int rectRadius: 5

        Rectangle {
            id: redRect
            color: "red"
            width: 100
            height: 100
            radius: rowBtnId.rectRadius

            Text {
                text: qsTr("Increase width by <b>10px</b>")
                wrapMode: Text.WordWrap
                fontSizeMode: Text.Fit
                width: parent.width * 0.9
                height: parent.height * 0.9
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    grayRect.width += 10
                }
            }
        }

        Rectangle {
            id: blueRect
            color: "blue"
            width: 100
            height: 100
            radius: rowBtnId.rectRadius

            Text {
                text: qsTr("Break the binding<br>Replace binding with static value")
                wrapMode: Text.WordWrap
                fontSizeMode: Text.Fit
                width: parent.width * 0.9
                height: parent.height * 0.9
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    grayRect.height = 100
                }
            }
        }

        Rectangle {
            id: yellowRect
            color: "yellow"
            width: 100
            height: 100
            radius: rowBtnId.rectRadius

            Text {
                text: qsTr("Break the binding<br>Replace binding with static value")
                wrapMode: Text.WordWrap
                fontSizeMode: Text.Fit
                width: parent.width * 0.9
                height: parent.height * 0.9
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    grayRect.height *= 2.5
                }
            }
        }

        Rectangle {
            id: cyanRect
            color: "cyan"
            width: 100
            height: 100
            radius: rowBtnId.rectRadius

            Text {
                text: qsTr("Decrease width by 10%")
                wrapMode: Text.WordWrap
                fontSizeMode: Text.Fit
                width: parent.width * 0.9
                height: parent.height * 0.9
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    grayRect.width *= 0.9
                }
            }
        }

        Rectangle {
            id: greenRect
            color: "green"
            width: 100
            height: 100
            radius: rowBtnId.rectRadius

            Text {
                text: qsTr("Restore property binding")
                wrapMode: Text.WordWrap
                fontSizeMode: Text.Fit
                width: parent.width * 0.9
                height: parent.height * 0.9
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    grayRect.height = Qt.binding(() => {
                                                     return grayRect.width * 0.9
                                                 })
                }
            }
        }
    }
}
