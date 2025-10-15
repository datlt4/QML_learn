import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Key Attached Property")

    Rectangle {
        id: rectId
        anchors.centerIn: parent
        width: rootId.width * 0.5
        height: rootId.height * 0.5
        color: "#BB3E00"
        radius: 15
        focus: true // This is important if you want to handler Key events.

        Keys.onPressed: event => {
                            if (event.modifiers & Qt.ShiftModifier) {
                                console.log("Shift")
                            } else if (event.modifiers & Qt.ControlModifier) {
                                console.log("Control")
                            } else if (event.modifiers & Qt.AltModifier) {
                                console.log("Alt")
                            } else if (event.modifiers & Qt.MetaModifier) {
                                console.log("Meta")
                            } else if (event.key === Qt.Key_Escape) {
                                Qt.quit()
                                console.log("Escape")
                            } else if (event.key === Qt.Key_Return) {
                                console.log("Return")
                            } else if (event.key === Qt.Key_Backspace) {
                                console.log("Backspace")
                            } else if (event.key === Qt.Key_Delete) {
                                console.log("Delete")
                            } else if (event.key === Qt.Key_Insert) {
                                console.log("Insert")
                            } else if (event.key === Qt.Key_Home) {
                                console.log("Home")
                            } else if (event.key === Qt.Key_End) {
                                console.log("End")
                            } else if (event.key === Qt.Key_PageUp) {
                                console.log("PageUp")
                            } else if (event.key === Qt.Key_PageDown) {
                                console.log("PageDown")
                            } else if (event.key === Qt.Key_Tab) {
                                console.log("Tab")
                            } else {
                                console.log("Key: " + event.key)
                            }
                        }
    }
}
