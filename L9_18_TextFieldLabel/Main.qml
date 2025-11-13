import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - TextField and Label")

    Column {
        spacing: 10
        anchors.centerIn: parent

        Row {
            spacing: 30
            width: 300
            Label {
                width: 100
                height: 50
                wrapMode: Label.Wrap
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                text: "First name: "
            }

            TextField {
                id: textFieldId
                width: 200
                height: 50
                placeholderText: "Type in first name"
                onEditingFinished: function () {
                    console.log("Current text: " + text)
                }
            }
        }

        Row {
            spacing: 30
            width: 300
            Label {
                width: 100
                height: 50
                wrapMode: Label.Wrap
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                text: "Last name: "
            }

            TextField {
                width: 200
                height: 50
                placeholderText: "Type in your last name"
                onEditingFinished: function () {
                    console.log("Current text: " + text)
                }
            }
        }

        Button {
            text: "Click"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: function () {
                console.log("Text: " + textFieldId.text)
            }
        }
    }
}
