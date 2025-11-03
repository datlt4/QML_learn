import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Button")

    ColumnLayout {
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.right: parent.right
        implicitWidth: parent.width

        Button {
            id: btn1
            text: "Button 1"
            // Layout.fillWidth: true
            Layout.preferredWidth: parent.width * 0.6
            Layout.alignment: Qt.AlignCenter
            onClicked: () => {
                           console.log("Button 1 clicked!")
                       }
        }

        Button {
            id: btn2
            text: "Button 2"
            // Layout.fillWidth: true
            Layout.preferredWidth: parent.width * 0.6
            Layout.alignment: Qt.AlignCenter
            onClicked: () => {
                           console.log("Button 2 clicked!")
                       }
        }
    }
}
