import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("L11_8 GridView")

    ListModel {
        id: myModelId

        ListElement {
            _num: "零"
            _color: "#606c38"
        }
        ListElement {
            _num: "一"
            _color: "#283618"
        }
        ListElement {
            _num: "二"
            _color: "#fefae0"
        }
        ListElement {
            _num: "三"
            _color: "#dda15e"
        }
        ListElement {
            _num: "四"
            _color: "#bc6c25"
        }
        ListElement {
            _num: "五"
            _color: "#780000"
        }
        ListElement {
            _num: "六"
            _color: "#c1121f"
        }
        ListElement {
            _num: "七"
            _color: "#003049"
        }
        ListElement {
            _num: "八"
            _color: "#669bbc"
        }
        ListElement {
            _num: "九"
            _color: "#cdb4db"
        }
        ListElement {
            _num: "十"
            _color: "#ffc8dd"
        }
        ListElement {
            _num: "十一"
            _color: "#ffafcc"
        }
        ListElement {
            _num: "十二"
            _color: "#bde0fe"
        }
        ListElement {
            _num: "十三"
            _color: "#a2d2ff"
        }
    }

    GridView {
        id: myGridId
        anchors.fill: parent
        model: myModelId
        cellWidth: 110
        cellHeight: 110
        delegate: Rectangle {
            width: 100
            height: width
            color: _color
            radius: 7
            Text {
                text: qsTr(_num)
                anchors.centerIn: parent
                font.pointSize: 40
            }
        }
    }
}
