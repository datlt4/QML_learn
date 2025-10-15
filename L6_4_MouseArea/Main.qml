import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - MouseArea")

    Rectangle {
        id: clickZoneId
        width: parent.width
        height: parent.height * 0.5
        anchors.top: parent.top
        color: "#FFA725"
        property int clickX: 50
        property int clickY: 50
        property int clickR: 25

        Rectangle {
            width: 50
            height: 50
            x: clickZoneId.clickX - clickZoneId.clickR
            y: clickZoneId.clickY - clickZoneId.clickR
            radius: clickZoneId.clickR
            color: "#C1D8C3"
        }

        MouseArea {
            anchors.fill: clickZoneId
            hoverEnabled: true
            onClicked: pos => {
                           clickZoneId.clickX = pos.x
                           clickZoneId.clickY = pos.y
                       }
            onHoveredChanged: {

                clickZoneId.color = containsMouse ? "#ffb951" : "#FFA725"
            }
        }
    }

    Rectangle {
        id: dragZoneId
        width: parent.width
        height: parent.height * 0.5
        anchors.bottom: parent.bottom
        color: "#6A9C89"
        property int clickX: 50
        property int clickY: 50
        property int clickR: 25

        Rectangle {
            id: dragObjectId
            width: 50
            height: 50
            x: dragZoneId.clickX - dragZoneId.clickR
            y: dragZoneId.clickY - dragZoneId.clickR
            radius: dragZoneId.clickR
            color: "#FFF5E4"
        }

        MouseArea {
            anchors.fill: dragZoneId
            drag.target: dragObjectId
            drag.axis: Drag.XAndYAxis
            drag.minimumX: 0
            drag.maximumX: dragZoneId.width - dragObjectId.width
            drag.minimumY: 0
            drag.maximumY: dragZoneId.height - dragObjectId.height
            hoverEnabled: true
            onHoveredChanged: {

                dragZoneId.color = containsMouse ? "#88b1a1" : "#6A9C89"
            }
        }

        onHeightChanged: {
            let newH = dragZoneId.height
            dragObjectId.y = (dragObjectId.y < newH - dragObjectId.height) ? dragObjectId.y : (newH - dragObjectId.height)
        }

        onWidthChanged: {
            let newW = dragZoneId.width
            dragObjectId.x = (dragObjectId.x < newW - dragObjectId.width) ? dragObjectId.x : (newW - dragObjectId.width)
        }
    }
}
