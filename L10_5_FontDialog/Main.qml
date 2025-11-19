import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Dialogs

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Font Dialog")

    ColumnLayout {
        spacing: 20
        anchors.centerIn: parent

        Button {
            text: "Select Font"
            Layout.alignment: Qt.AlignHCenter
            onClicked: () => {
                           console.log("Select Fontt")
                           fontDialogId.open()
                       }
        }

        Text {
            id: textId
            text: "Hello World"
            Layout.alignment: Qt.AlignHCenter
        }

        FontDialog {
            id: fontDialogId
            title: "Choose Font"
            options: FontDialog.MonospacedFonts
            currentFont: Qt.font({
                                     "family": "Arial",
                                     "pointSize": 24,
                                     "weight": Font.Normal
                                 })
            onAccepted: function () {
                textId.font = fontDialogId.selectedFont
            }
            onRejected: function () {
                console.log("Dialog is rejected.")
            }
        }
    }
}
