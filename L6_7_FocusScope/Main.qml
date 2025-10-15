import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    property bool focusG: false
    property bool focusR: false

    Row {
        anchors.centerIn: parent
        spacing: 20

        FocusElement {
            rectColor: "#B2D3A8"
            textColor: "#498467"
            borderColor: "#592941"
            text: qsTr("我是越南人。Green")
            focus: focusG
            onNeedFocus: {
                focusG = true
                focusR = false
            }
        }

        FocusElement {
            rectColor: "#F6D0B1"
            textColor: "#638475"
            borderColor: "#CE4760"
            text: qsTr("我是越南人。Red")
            focus: focusR
            onNeedFocus: {
                focusG = false
                focusR = true
            }
        }
    }
}
