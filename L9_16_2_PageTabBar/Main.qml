import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Page and Tab Bar")

    Page {
        anchors.fill: parent

        header: TabBar {
            id: bar
            width: parent.width
            // anchors.bottom: parent.bottom
            TabButton {
                text: qsTr("Home")
            }
            TabButton {
                text: qsTr("Discover")
            }
            TabButton {
                text: qsTr("Activity")
            }
        }

        StackLayout {
            id: stackId
            width: parent.width
            height: parent.height

            currentIndex: bar.currentIndex
            Item {
                id: homeTab
                Rectangle {
                    anchors.fill: parent
                    color: "#DB2763"
                    InnerItem {}
                    Image {
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectFit
                        source: "qrc:/images/1.png"
                    }
                }
            }
            Item {
                id: discoverTab
                Rectangle {
                    anchors.fill: parent
                    color: "#B0DB43"
                    Image {
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectFit
                        source: "qrc:/images/2.png"
                    }
                    InnerItem {}
                }
            }
            Item {
                id: activityTab
                Rectangle {
                    anchors.fill: parent
                    color: "#12EAEA"
                    Image {
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectFit
                        source: "qrc:/images/3.png"
                    }
                    InnerItem {}
                }
            }
        }

        footer: Rectangle {
            id: footerRectId
            color: "#6CD4FF"
            width: parent.width
            height: 50
            Text {
                text: qsTr("© 2025 Koi")
                font.bold: true
                font.pointSize: 10
                color: "#5D576B"
                anchors.centerIn: parent
            }
        }
    }
}
