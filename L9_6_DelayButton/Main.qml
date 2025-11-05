import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - DelayButton")

    ColumnLayout {
        implicitWidth: parent.width
        implicitHeight: parent.height * 0.5

        Label {
            text: qsTr("Delayed Button. Use it when you want to prevent accidental clicks")
            Layout.fillWidth: true
            wrapMode: Label.Wrap
            font.pointSize: 15
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            width: rootId.width
            height: 100
        }

        DelayButton {
            property bool activated: false
            text: "DelayButton"
            Layout.fillWidth: true
            delay: 1000

            onPressed: function () {
                if (activated === true) {
                    console.log("Button is clicked. Carrying out the task")
                    activated = false
                }
            }

            onActivated: function () {
                console.log("Button activated")
                activated = true
            }

            onProgressChanged: function () {
                console.log(progress)
            }
        }
    }
}
