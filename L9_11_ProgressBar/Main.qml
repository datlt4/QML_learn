import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Progress Bar")

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 30
        width: parent.width * 0.6

        Dial {
            id: dialId
            from: 0
            to: 1
            value: 0.5
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: parent.width / 2
            Layout.preferredHeight: parent.width / 2
            onValueChanged: function () {
                pbarId.value = value
            }
        }

        ProgressBar {
            id: pbarId
            Layout.preferredWidth: parent.width
            Layout.alignment: Qt.AlignHCenter
        }

        ProgressBar {
            indeterminate: true
            Layout.preferredWidth: parent.width
            Layout.alignment: Qt.AlignHCenter
        }
    }

    Component.onCompleted: {
        pbarId.value = dialId.value
    }
}
