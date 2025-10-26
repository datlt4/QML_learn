import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Anchors")

    property int cubeSize: Math.round((Math.min(rootId.width, rootId.height) * 0.7) / 3)

    Rectangle {
        id: containerCube
        width: cubeSize * 3
        height: cubeSize * 3
        border.color: "black"
        border.width: 1
        anchors.centerIn: parent

        Rectangle{
            id: r1
            width: cubeSize
            height: cubeSize
            anchors.top: containerCube.top
            anchors.left: containerCube.left
            color: "#d9f0f6"
            Text {
                text: qsTr("一")
                font.pointSize: 20
                anchors.centerIn: parent
            }
        }

        Rectangle{
            id: r2
            width: cubeSize
            height: cubeSize
            anchors.top: containerCube.top
            anchors.left: r1.right
            color: "#c6e8f1"
            Text {
                text: qsTr("二")
                font.pointSize: 20
                anchors.centerIn: parent
            }
        }

        Rectangle{
            id: r3
            width: cubeSize
            height: cubeSize
            anchors.top: containerCube.top
            anchors.left: r2.right
            color: "#b3e1ec"
            Text {
                text: qsTr("三")
                font.pointSize: 20
                anchors.centerIn: parent
            }
        }

        Rectangle{
            id: r4
            width: cubeSize
            height: cubeSize
            anchors.top: r1.bottom
            anchors.left: containerCube.left
            color: "#a0d9e8"
            Text {
                text: qsTr("四")
                font.pointSize: 20
                anchors.centerIn: parent
            }
        }

        Rectangle{
            id: r5
            width: cubeSize
            height: cubeSize
            anchors.top: r2.bottom
            anchors.left: r4.right
            color: "#8cd1e3"
            Text {
                text: qsTr("五")
                font.pointSize: 20
                anchors.centerIn: parent
            }
        }

        Rectangle{
            id: r6
            width: cubeSize
            height: cubeSize
            anchors.top: r3.bottom
            anchors.left: r5.right
            color: "#79cade"
            Text {
                text: qsTr("六")
                font.pointSize: 20
                anchors.centerIn: parent
            }
        }

        Rectangle{
            id: r7
            width: cubeSize
            height: cubeSize
            anchors.top: r4.bottom
            anchors.left: containerCube.left
            color: "#66c2d9"
            Text {
                text: qsTr("七")
                font.pointSize: 20
                anchors.centerIn: parent
            }
        }

        Rectangle{
            id: r8
            width: cubeSize
            height: cubeSize
            anchors.top: r5.bottom
            anchors.left: r7.right
            color: "#53bbd5"
            Text {
                text: qsTr("八")
                font.pointSize: 20
                anchors.centerIn: parent
            }
        }

        Rectangle{
            id: r9
            width: cubeSize
            height: cubeSize
            anchors.top: r6.bottom
            anchors.left: r8.right
            color: "#40b3d0"
            Text {
                text: qsTr("九")
                font.pointSize: 20
                anchors.centerIn: parent
            }
        }
    }
}
