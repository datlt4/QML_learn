import QtQuick
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Layouts")

    GridLayout {
        anchors.fill: parent
        columns: 3
        rowSpacing: 5
        columnSpacing: 10
        // layoutDirection: Qt.RightToLeft

        Rectangle {
            color: "#fce1e7"
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.maximumHeight: 100
            Layout.maximumWidth: 100
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter

            Text {
                text: qsTr("一")
                color: "#30151b"
                anchors.centerIn: parent
                font.pointSize: 30
            }
        }

        Rectangle {
            color: "#fad3db"
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.columnSpan: 2

            Text {
                text: qsTr("二")
                color: "#30151b"
                anchors.centerIn: parent
                font.pointSize: 30
            }
        }

        // Rectangle {
        //     color: "#f8c4cf"
        //     Layout.fillHeight: true
        //     Layout.fillWidth: true

        //     Text {
        //         text: qsTr("三")
        //         color: "#30151b"
        //         anchors.centerIn: parent
        //         font.pointSize: 30
        //     }
        // }

        Rectangle {
            color: "#f7b5c3"
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.rowSpan: 2

            Text {
                text: qsTr("四")
                color: "#30151b"
                anchors.centerIn: parent
                font.pointSize: 30
            }
        }

        Rectangle {
            color: "#f5a6b6"
            Layout.fillHeight: true
            Layout.fillWidth: true

            Text {
                text: qsTr("五")
                color: "#30151b"
                anchors.centerIn: parent
                font.pointSize: 30
            }
        }

        Rectangle {
            color: "#f397aa"
            Layout.fillHeight: true
            Layout.fillWidth: true

            Text {
                text: qsTr("六")
                color: "#30151b"
                anchors.centerIn: parent
                font.pointSize: 30
            }
        }

        // Rectangle {
        //     color: "#f1899e"
        //     Layout.fillHeight: true
        //     Layout.fillWidth: true

        //     Text {
        //         text: qsTr("七")
        //         color: "#30151b"
        //         anchors.centerIn: parent
        //         font.pointSize: 30
        //     }
        // }

        Rectangle {
            color: "#f07a92"
            Layout.fillHeight: true
            Layout.fillWidth: true

            Text {
                text: qsTr("八")
                color: "#30151b"
                anchors.centerIn: parent
                font.pointSize: 30
            }
        }

        Rectangle {
            color: "#ee6b86"
            Layout.fillHeight: true
            Layout.fillWidth: true

            Text {
                text: qsTr("九")
                color: "#30151b"
                anchors.centerIn: parent
                font.pointSize: 30
            }
        }
    }
}
