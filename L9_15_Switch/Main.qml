import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Switch")

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 20
        Switch {
            text: qsTr("Wi-Fi")
            checked: true
            onClicked: () => {
                           console.log("Wi-Fi", checked ? "enabled" : "disabled")
                       }
        }
        Switch {
            text: qsTr("Bluetooth")
            checked: false
            onClicked: () => {
                           console.log("Bluetooth", checked ? "enabled" : "disabled")
                       }
        }
        Switch {
            text: qsTr("NFC")
            checked: false
            enabled: false
            onClicked: () => {
                           console.log("NFC", checked ? "enabled" : "disabled")
                       }
        }
    }
}
