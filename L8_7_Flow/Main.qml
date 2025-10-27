import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Flow")

    Flow {
        anchors.fill: parent
        spacing: 10
        anchors.margins: 20
        flow: Flow.LeftToRight

        Elem {
            text: qsTr("零")
            color: "#f0fafd"
        }

        Elem {
            text: qsTr("一")
            color: "#e1f4fb"
        }

        Elem {
            text: qsTr("二")
            color: "#d3effa"
        }

        Elem {
            text: qsTr("三")
            color: "#c4e9f8"
        }

        Elem {
            text: qsTr("四")
            color: "#b5e4f6"
        }

        Elem {
            text: qsTr("五")
            color: "#a6def4"
        }

        Elem {
            text: qsTr("六")
            color: "#97d9f2"
        }

        Elem {
            text: qsTr("七")
            color: "#89d3f1"
        }

        Elem {
            text: qsTr("八")
            color: "#7aceef"
        }

        Elem {
            text: qsTr("九")
            color: "#6bc8ed"
        }

        Elem {
            text: qsTr("十")
            color: "#6bc8ed"
        }

        Elem {
            text: qsTr("十一")
            color: "#60b4d5"
        }

        Elem {
            text: qsTr("十二")
            color: "#56a0be"
        }

        Elem {
            text: qsTr("十三")
            color: "#4b8ca6"
        }

        Elem {
            text: qsTr("十四")
            color: "#4b8ca6"
        }

        Elem {
            text: qsTr("十五")
            color: "#40788e"
            textColor: "#f0fafd"
        }

        Elem {
            text: qsTr("十六")
            color: "#366477"
            textColor: "#f0fafd"
        }

        Elem {
            text: qsTr("十七")
            color: "#2b505f"
            textColor: "#f0fafd"
        }

        Elem {
            text: qsTr("十八")
            color: "#203c47"
            textColor: "#f0fafd"
        }

        Elem {
            text: qsTr("十九")
            color: "#15282f"
            textColor: "#f0fafd"
        }

        Elem {
            text: qsTr("二十")
            color: "#0b1418"
            textColor: "#f0fafd"
        }

        Elem {
            text: qsTr("二十一")
            color: "#000000"
            textColor: "#f0fafd"
        }
    }
}
