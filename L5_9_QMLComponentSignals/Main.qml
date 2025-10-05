import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Component Signals")

    Row {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 50

        Notifier {
            id: notifierId
            target: receiverId
        }

        Receiver {
            id: receiverId
        }
    }

    Component.onCompleted: {
        notifierId.notifySignal.connect(receiverId.changeCountHandler)
    }
}
