import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Attached Signal Handles")

    Rectangle {
        id: rectId
        anchors.centerIn: parent
        width: rootId.width * 0.5
        height: rootId.height * 0.5
        color: "#FFACAC"
        radius: 15

        Component.onCompleted: {
            //Load data for use in the UI
            console.log("Starting up...")
        }

        Component.onDestruction: {
            //Saving data from the UI to the data store
            console.log("App is dying...")
        }
    }
}
