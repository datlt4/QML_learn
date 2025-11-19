import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Dialogs

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Color Dialog")

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 20

        Button {
            text: "Select Color"
            Layout.alignment: Qt.AlignHCenter
            onClicked: () => {
                           console.log("Select Color")
                           colorDialogId.open()
                       }
        }

        Rectangle {
            id: colorIndicatorId
            width: 200
            height: 200
            radius: 20
            color: "#F08787"
            Layout.alignment: Qt.AlignHCenter
        }

        ColorDialog {
            id: colorDialogId
            onAccepted: () => {
                            colorIndicatorId.color = selectedColor
                        }
        }
    }
}
