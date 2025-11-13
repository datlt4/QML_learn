import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Text Area and ScrollView")

    Column {
        anchors.centerIn: parent
        height: parent.height - 30
        width: parent.width - 30
        spacing: 10

        Label {
            id: labelId
            text: qsTr("TextArea is a multi-line text editor.")

            verticalAlignment: Qt.AlignVCenter
            horizontalAlignment: Qt.AlignHCenter
            wrapMode: Text.WordWrap
            width: parent.width
        }

        ScrollView {
            id: view
            width: parent.width
            height: parent.height - labelId.implicitHeight - submitBtnId.implicitWidth

            // anchors.top: labelId.bottom
            // anchors.bottom: submitBtnId.top
            TextArea {
                id: textAreaId
                font.pointSize: 15
                wrapMode: TextArea.WordWrap
                placeholderText: "Type in some text"
            }
        }

        Button {
            id: submitBtnId
            text: qsTr("Submit")
            anchors.horizontalCenter: parent.horizontalCenter
            // anchors.bottom: parent.bottom
            onClicked: () => {
                           console.log(textAreaId.text)
                       }
        }
    }
}
