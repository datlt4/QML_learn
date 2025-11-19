import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Dialogs

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - File Dialog")

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 20

        Button {
            text: "Select File"
            Layout.alignment: Qt.AlignHCenter
            onClicked: () => {
                           console.log("Select File")
                           fileDialogId.open()
                       }
        }

        Label {
            text: "User needs to select a file"
            Layout.fillWidth: true
        }

        FileDialog {
            id: fileDialogId
            fileMode: FileDialog.OpenFiles
            selectedNameFilter.index: 0
            nameFilters: ["Text files (*.txt)", "HTML files (*.html *.htm)"]
            onAccepted: () => {
                            console.log("---", selectedFiles)
                        }
        }
    }
}
