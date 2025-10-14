import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Better Text Input")

    Column {
        id: formLoginId
        anchors.centerIn: parent
        spacing: 10

        LabeledTextInput {
            baseH: 60
            baseW: 140
            label: "Username:"
            placeholder: "Enter username here..."
        }

        LabeledTextInput {
            baseH: 60
            baseW: 140
            label: "Password:"
            placeholder: "Enter password here..."
            echoMode: TextInput.Password
        }

        Rectangle {
            id: btnLoginId
            width: rootId.w
            height: rootId.h
            color: btnColor
            radius: 3
            anchors.horizontalCenter: parent.horizontalCenter
            implicitHeight: labelBtnLoginId.implicitHeight * 1.5
            implicitWidth: labelBtnLoginId.implicitWidth * 1.5
            property string btnColor: "#4C763B"

            Text {
                id: labelBtnLoginId
                text: qsTr("Login")
                anchors.centerIn: parent
                color: "#FFFD8F"
                font.pointSize: 20
            }

            MouseArea {
                anchors.fill: parent

                onPressed: {
                    btnLoginId.btnColor = "#344F1F"
                }

                onReleased: {
                    btnLoginId.btnColor = "#4C763B"
                }
            }
        }
    }
}
