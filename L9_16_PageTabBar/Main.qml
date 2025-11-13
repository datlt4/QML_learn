import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Page and Tab Bar")

    TabBar {
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
        width: parent.width
        // height: parent.height - bar.implicitHeight
        anchors.top: bar.bottom
        anchors.bottom: parent.bottom
        currentIndex: bar.currentIndex
        Item {
            id: homeTab
            Rectangle {
                anchors.fill: parent
                color: "#DB2763"
                Image {
                    anchors.centerIn: parent
                    fillMode: Image.PreserveAspectFit
                    source: "qrc:/images/1.png"
                }
                InnerItem {
                    anchors.fill: parent
                }
            }
        }
        Item {
            id: discoverTab
            Rectangle {
                anchors.fill: parent
                color: "#B0DB43"
                Image {
                    anchors.centerIn: parent
                    fillMode: Image.PreserveAspectFit
                    source: "qrc:/images/2.png"
                }
                InnerItem {
                    anchors.fill: parent
                }
            }
        }
        Item {
            id: activityTab
            Rectangle {
                anchors.fill: parent
                color: "#12EAEA"
                Image {
                    anchors.centerIn: parent
                    fillMode: Image.PreserveAspectFit
                    source: "qrc:/images/3.png"
                }
                InnerItem {
                    anchors.fill: parent
                }
            }
        }
    }
}
