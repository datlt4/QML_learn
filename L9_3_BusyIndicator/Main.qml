import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - BusyIndicator")

    ColumnLayout {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        implicitWidth: parent.width
        implicitHeight: parent.height

        BusyIndicator {
            id: loadingId
            visible: false
            running: false
            Layout.alignment: Qt.AlignCenter
        }

        RowLayout {
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter
            spacing: 40

            Button {
                text: "Show Loading...!"
                Layout.preferredHeight: 50
                Layout.preferredWidth: 250
                Layout.alignment: Qt.AlignCenter
                onClicked: () => {
                               loadingId.visible = true
                               loadingId.running = true
                           }
            }

            Button {
                text: "Stop heavy load!"
                Layout.preferredHeight: 50
                Layout.preferredWidth: 250
                Layout.alignment: Qt.AlignCenter
                onClicked: () => {
                               loadingId.visible = false
                               loadingId.running = false
                           }
            }
        }
    }
}
