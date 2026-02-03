import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("L11_7 Dynamic Models")

    ListModel {
        id: myModelId
        ListElement {
            num: "一"
        }
        ListElement {
            num: "二"
        }
        ListElement {
            num: "三"
        }
        ListElement {
            num: "四"
        }
        ListElement {
            num: "五"
        }
        ListElement {
            num: "六"
        }
        ListElement {
            num: "七"
        }
        ListElement {
            num: "八"
        }
        ListElement {
            num: "九"
        }
        ListElement {
            num: "十"
        }
    }

    ColumnLayout {
        anchors.fill: parent
        spacing: 12

        // ===== LIST VIEW =====
        ListView {
            id: myViewId
            Layout.fillWidth: true
            Layout.preferredHeight: parent.height * 0.65

            model: myModelId

            delegate: Rectangle {
                property int hm: 40
                width: ListView.view.width
                height: 80

                Rectangle {
                    width: parent.width - hm
                    height: parent.height - 20
                    anchors.centerIn: parent
                    radius: 6
                    color: "#79db60"
                    border.color: "#559943"
                    border.width: 2

                    Text {
                        text: num
                        color: "#3d6e30"
                        font.pointSize: 30
                        anchors.centerIn: parent
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: console.log(num)
                    }
                }

                onWidthChanged: {
                    if (width < 200)
                        hm = 10
                    else if (width < 400)
                        hm = 20
                    else if (width < 600)
                        hm = 30
                    else
                        hm = 40
                }
            }
        }

        Button {
            text: "Add new item"
            // Layout.fillWidth: true
            Layout.preferredWidth: parent.width * 0.6
            Layout.alignment: Qt.AlignCenter
            onClicked: () => {
                           myModelId.append({
                                                "num": "零"
                                            })
                       }
        }

        Button {
            text: "Delete at index 2"
            // Layout.fillWidth: true
            Layout.preferredWidth: parent.width * 0.6
            Layout.alignment: Qt.AlignCenter
            onClicked: () => {
                           myModelId.remove(2)
                       }
        }

        Button {
            text: "Set itme at index 1"
            // Layout.fillWidth: true
            Layout.preferredWidth: parent.width * 0.6
            Layout.alignment: Qt.AlignCenter
            onClicked: () => {
                           myModelId.set(1, {
                                             "num": "零零"
                                         })
                       }
        }

        Button {
            text: "Clear"
            // Layout.fillWidth: true
            Layout.preferredWidth: parent.width * 0.6
            Layout.alignment: Qt.AlignHCenter
            onClicked: () => {
                           myModelId.clear()
                       }
        }
    }
}
