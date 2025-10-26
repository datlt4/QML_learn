import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Anchor Margin and Offset")

    property int cubeSize: Math.round((Math.min(rootId.width, rootId.height) * 0.7) / 3)
    property int m: 20

    Rectangle {
        id: containerCube
        width: cubeSize * 3
        height: cubeSize * 3
        anchors.centerIn: parent

        Rectangle {
            id: r1
            width: cubeSize
            height: cubeSize
            anchors.bottom: r5.top
            anchors.right: r5.left
            anchors.bottomMargin: m
            anchors.rightMargin: m
            color: "#e7f8eb"
            Text {
                text: qsTr("一")
                font.pointSize: 20
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id: r2
            width: cubeSize
            height: cubeSize
            anchors.horizontalCenter: r5.horizontalCenter
            anchors.bottom: r5.top
            anchors.bottomMargin: m
            color: "#dbf5e1"
            Text {
                text: qsTr("二")
                font.pointSize: 20
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id: r3
            width: cubeSize
            height: cubeSize
            anchors.left: r5.right
            anchors.bottom: r5.top
            anchors.leftMargin: m
            anchors.bottomMargin: m
            color: "#cff2d7"
            Text {
                text: qsTr("三")
                font.pointSize: 20
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id: r4
            width: cubeSize
            height: cubeSize
            anchors.verticalCenter: r5.verticalCenter
            anchors.right: r5.left
            anchors.rightMargin: m
            color: "#c3efcd"
            Text {
                text: qsTr("四")
                font.pointSize: 20
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id: r5
            width: cubeSize
            height: cubeSize
            anchors.horizontalCenter: containerCube.horizontalCenter
            anchors.verticalCenter: containerCube.verticalCenter
            color: "#b7ebc2"
            Text {
                text: qsTr("五")
                font.pointSize: 20
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id: r6
            width: cubeSize
            height: cubeSize
            anchors.verticalCenter: r5.verticalCenter
            anchors.left: r5.right
            anchors.leftMargin: m
            color: "#abe8b8"
            Text {
                text: qsTr("六")
                font.pointSize: 20
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id: r7
            width: cubeSize
            height: cubeSize
            anchors.top: r5.bottom
            anchors.right: r5.left
            anchors.topMargin: m
            anchors.rightMargin: m
            color: "#9fe5ae"
            Text {
                text: qsTr("七")
                font.pointSize: 20
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id: r8
            width: cubeSize
            height: cubeSize
            anchors.horizontalCenter: r5.horizontalCenter
            anchors.top: r5.bottom
            anchors.topMargin: m
            color: "#93e1a4"
            Text {
                text: qsTr("八")
                font.pointSize: 20
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id: r9
            width: cubeSize
            height: cubeSize
            anchors.left: r5.right
            anchors.top: r5.bottom
            anchors.leftMargin: m
            anchors.topMargin: m
            color: "#87de9a"
            Text {
                text: qsTr("九")
                font.pointSize: 20
                anchors.centerIn: parent
            }
        }
    }
}
