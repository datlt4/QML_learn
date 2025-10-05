import QtQuick

Item {
    property int count: 0
    signal notifySignal(string message)
    width: notifierRectId.width
    height: notifierRectId.height

    required property Receiver target

    onTargetChanged: {
        notifySignal.connect(target.changeCountHandler2)
    }

    Rectangle {
        id: notifierRectId
        color: "#556B2F"
        radius: 15
        width: 200
        height: 200

        Text {
            id: notifierTextId
            text: count
            font.pointSize: 100
            color: "#DDF4E7"
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                notifySignal(++count)
            }
        }
    }
}
