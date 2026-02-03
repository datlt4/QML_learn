import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("L11_4 Header, Footer and Highlight")

    ListView {
        id: myViewId
        anchors.fill: parent
        model: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"]
        header: Rectangle {
            height: 50
            width: rootId.width
            color: "#df522a"
            Text {
                anchors.centerIn: parent
                text: "Months"
                color: "#fceeea"
            }
        }

        footer: Rectangle {
            height: 50
            width: rootId.width
            color: "#df522a"
            Text {
                anchors.centerIn: parent
                // text: "Footer"
                color: "#fceeea"
            }
        }

        highlight: Rectangle {
            width: rootId.width
            color: "blue"
            radius: 15
            border.color: "yellowgreen"
            opacity: 0.3
            z: 3
        }

        delegate: Rectangle {
            property int hm: 40
            width: myViewId.width
            height: 35
            Rectangle {
                color: "#c54141"
                width: parent.width - parent.hm
                height: parent.height - 10
                border.color: "#9e3434"
                border.width: 2
                anchors.centerIn: parent
                radius: 6
                Text {
                    text: qsTr(modelData)
                    color: "#f9ecec"
                    font.pointSize: 15
                    anchors.centerIn: parent
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        console.log(modelData)
                        myViewId.currentIndex = index
                    }
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
}
