import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("L11_3 Inline Model")
    // function
    ListView {
        id: myViewId
        anchors.fill: parent
        model: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"]
        delegate: Rectangle {
            property int hm: 40
            width: myViewId.width
            height: 80
            Rectangle {
                color: "#79db60"
                width: parent.width - parent.hm
                height: parent.height - 20
                border.color: "#559943"
                border.width: 2
                anchors.centerIn: parent
                radius: 6
                Text {
                    text: qsTr(modelData)
                    color: "#3d6e30"
                    font.pointSize: 30
                    anchors.centerIn: parent
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: () => console.log(modelData)
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
