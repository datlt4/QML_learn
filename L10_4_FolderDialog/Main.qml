import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Dialogs

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Folder Dialog")

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 20

        Button {
            text: "Select Folder"
            Layout.alignment: Qt.AlignHCenter
            onClicked: () => {
                           console.log("Select Folder")
                           folderDialogId.open()
                       }
        }

        Label {
            id: lableId
            text: "User needs to select a file"
            Layout.fillWidth: true
            wrapMode: Qt.TextWordWrap
            horizontalAlignment: Text.AlignHCenter
        }

        FolderDialog {
            id: folderDialogId
            title: "Choose Folder"
            currentFolder: "/User/mabu"
            onAccepted: {
                lableId.text = currentFolder
            }

            onRejected: {
                lableId.text = "Dialog rejected"
            }
        }
    }
}
