import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Dialogs

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Message Dialog")
    ColumnLayout{
        spacing: 20
        anchors.centerIn: parent

        Button{
            text: "Press Me"
            onClicked: function(){
                messageDialogId.open()
            }
        }
    }

    MessageDialog{
        id: messageDialogId
        title: "Message"
        text: "Lie down and watch the sky my friend!"
        buttons: MessageDialog.Ok | MessageDialog.Cancel
        onAccepted: function(){
            console.log("Dialog accepted")
        }

        onRejected: function(){
            console.log("Dialog rejected")
        }
    }
}
