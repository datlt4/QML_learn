import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Slider")

    function normValue(value, max = 100) {
        return value / max
    }

    ColumnLayout {
        implicitWidth: parent.width
        spacing: 10
        anchors.centerIn: parent
        width: parent.width

        Slider {
            id: sliderId
            from: 0
            value: 25
            to: 100
            Layout.preferredWidth: parent.width * 0.6 + 14
            Layout.alignment: Qt.AlignCenter
            padding: 0
            onValueChanged: () => {
                                progressBarId.value = rootId.normValue(value)
                            }
        }

        ProgressBar {
            id: progressBarId
            value: 0.5
            Layout.preferredWidth: parent.width * 0.6
            Layout.alignment: Qt.AlignCenter
        }
    }

    Component.onCompleted: {
        progressBarId.value = rootId.normValue(sliderId.value)
    }
}
