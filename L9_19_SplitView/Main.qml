import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - SplitView")

    SplitView {
        anchors.fill: parent
        orientation: Qt.Horizontal

        Rectangle {
            implicitWidth: 200
            SplitView.maximumWidth: 400
            color: "#048A81"
            Label {
                text: "048A81"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 50
                font.pointSize: 15
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
        Rectangle {
            SplitView.minimumWidth: 50
            SplitView.fillWidth: true
            color: "#06D6A0"
            Label {
                text: "06D6A0"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 50
                font.pointSize: 15
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
        Rectangle {
            implicitWidth: 200
            color: "#54C6EB"
            Label {
                text: "54C6EB"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 50
                font.pointSize: 15
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
        Rectangle {
            SplitView.minimumWidth: 50
            SplitView.fillWidth: true
            color: "#8A89C0"
            Label {
                text: "8A89C0"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 50
                font.pointSize: 15
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
        Rectangle {
            implicitWidth: 200
            color: "#CDA2AB"
            Label {
                text: "CDA2AB"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 50
                font.pointSize: 15
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }
}
