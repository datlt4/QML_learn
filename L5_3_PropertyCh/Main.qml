import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Property Change Handler")

    Rectangle {
        id: rectId
        anchors.centerIn: parent
        width: rootId.width * 0.5
        height: rootId.height * 0.5
        color: "#FAB12F"
        radius: 15

        onHeightChanged:  {
                             console.log("HEIGHT changed to", rectId.height)
                         }

        onWidthChanged: {
                            console.log("WIDTH changed to", rectId.width)
                        }

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true

            onClicked: {

            }
        }
    }
}
