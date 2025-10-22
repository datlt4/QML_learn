import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - JavaScript Usage")
    onWidthChanged: {
        if (rootId.width < dRId.r * 6) {
            rootId.width = dRId.r * 6
        }
        dRId.x = Math.min(rootId.width - dRId.r * 2, dRId.x)
    }

    onHeightChanged: {
        if (rootId.height < dRId.r * 6) {
            rootId.height = dRId.r * 6
        }
        dRId.y = Math.min(rootId.height - drId.r * 2, drId.y)
    }

    Rectangle {
        id: cRId
        width: rootId.width * 0.4
        height: rootId.height * 0.4
        color: "#3B9797"
        opacity: 1
        anchors.centerIn: parent

        function isInRect(x, y) {
            let ret
            if ((x > cRId.x - 2 * dRId.r) && (x < cRId.x + width) && (y > cRId.y - 2 * dRId.r) && (y < cRId.y + height)) {
                ret = true
            } else {
                ret = false
            }
            return ret
        }
    }

    Rectangle {
        property int r: 25
        id: dRId
        width: r * 2
        height: r * 2
        radius: r
        color: cRId.isInRect(x, y) ? "#BF092F" : "#132440"
        opacity: 1 - (dRId.x / rootId.width)

        MouseArea {
            anchors.fill: parent
            drag.target: dRId
            drag.axis: Drag.XAndYAxis
            drag.minimumX: 0
            drag.maximumX: rootId.width - dRId.r * 2
            drag.minimumY: 0
            drag.maximumY: rootId.height - dRId.r * 2
        }
    }
}
