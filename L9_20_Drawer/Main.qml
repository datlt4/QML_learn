import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    id: windowId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Drawer")

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            Action {
                text: qsTr("&New...")
                onTriggered: console.log("New ...")
            }
            Action {
                text: qsTr("&Open...")
                onTriggered: console.log("Open...")
            }
            Action {
                text: qsTr("&Save")
                onTriggered: console.log("Save")
            }
            Action {
                text: qsTr("Save &As...")
                onTriggered: console.log("Save As")
            }
            MenuSeparator {}
            Action {
                text: qsTr("&Quit")
                onTriggered: console.log("Quit")
            }
        }
        Menu {
            title: qsTr("&Edit")
            Action {
                text: qsTr("Cu&t")
                onTriggered: console.log("Cut")
            }
            Action {
                text: qsTr("&Copy")
                onTriggered: console.log("Copy")
            }
            Action {
                text: qsTr("&Paste")
                onTriggered: console.log("Past")
            }
        }
        Menu {
            title: qsTr("&Help")
            Action {
                text: qsTr("&About")
                onTriggered: console.log("About")
            }
        }
    }

    Drawer {
        id: drawerID
        width: 0.66 * windowId.width
        height: windowId.height

        Column {
            width: parent.width * 0.9
            height: parent.height * 0.9
            anchors.centerIn: parent
            spacing: 10

            Text {
                text: qsTr("Cover")
                font.pointSize: 40
                MouseArea {
                    anchors.fill: parent
                    onClicked: () => {
                                   bar.currentIndex = 0
                               }
                }
            }
            Text {
                text: qsTr("Definition")
                font.pointSize: 15
                leftPadding: 15
                MouseArea {
                    anchors.fill: parent
                    onClicked: () => {
                                   bar.currentIndex = 1
                               }
                }
            }
            Text {
                text: qsTr("Architecture")
                font.pointSize: 15
                leftPadding: 15
                MouseArea {
                    anchors.fill: parent
                    onClicked: () => {
                                   bar.currentIndex = 2
                               }
                }
            }
        }
    }

    header: ToolBar {
        RowLayout {
            anchors.fill: parent
            ToolButton {
                text: qsTr("⋮")
                onClicked: drawerID.open()
            }
            Label {
                text: "Title"
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }
            ToolButton {
                text: qsTr("")
                enabled: false
            }
        }
    }

    footer: TabBar {
        id: bar
        width: parent.width
        currentIndex: 0
        TabButton {
            text: qsTr("Cover")
        }
        TabButton {
            text: qsTr("Definition")
        }
        TabButton {
            text: qsTr("Architecture")
        }
    }

    StackLayout {
        id: layout
        anchors.fill: parent
        currentIndex: bar.currentIndex
        Rectangle {
            implicitWidth: 200
            implicitHeight: 200
            Image {
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
                source: "qrc:/images/1.png"
            }
        }
        Rectangle {
            implicitWidth: 300
            implicitHeight: 200
            Image {
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
                source: "qrc:/images/2.png"
            }
        }
        Rectangle {
            implicitWidth: 300
            implicitHeight: 200
            Image {
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
                source: "qrc:/images/3.png"
            }
        }
    }
}
