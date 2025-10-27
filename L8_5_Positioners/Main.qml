import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Positioner")

    Grid {
        anchors.centerIn: parent
        columns: 2
        horizontalItemAlignment: Grid.AlignRight
        verticalItemAlignment: Grid.AlignVCenter
        Rectangle{
            width: 100
            height: 100
            color: "#F15025"
        }

        Rectangle{
            width: 150
            height: 150
            color: "#659B5E"
        }

        Rectangle{
            width: 150
            height: 150
            color: "#A690A4"
        }

        Rectangle{
            width: 150
            height: 150
            color: "#82DDF0"
        }
    }
}
