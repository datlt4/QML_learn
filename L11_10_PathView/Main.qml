import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("L11_10 PathView")

    Rectangle {
        width: parent.width
        height: parent.height
        color: "#EBEBEB"

        ListModel {
            id: myModelId
            ListElement {
                c: "#606c38"
            }
            ListElement {
                c: "#283618"
            }
            ListElement {
                c: "#fefae0"
            }
            ListElement {
                c: "#dda15e"
            }
            ListElement {
                c: "#bc6c25"
            }
            ListElement {
                c: "#780000"
            }
            ListElement {
                c: "#c1121f"
            }
            ListElement {
                c: "#ffafcc"
            }
            ListElement {
                c: "#003049"
            }
            ListElement {
                c: "#669bbc"
            }
            ListElement {
                c: "#8ecae6"
            }
            ListElement {
                c: "#219ebc"
            }
            ListElement {
                c: "#023047"
            }
            ListElement {
                c: "#ffb703"
            }
            ListElement {
                c: "#fb8500"
            }
            ListElement {
                c: "#7f5539"
            }
            ListElement {
                c: "#a68a64"
            }
            ListElement {
                c: "#656d4a"
            }
        }

        Component {
            id: myDelegateId
            Column {
                scale: PathView.scale
                opacity: PathView.isCurrentItem ? 1 : 0.3
                Rectangle {
                    width: 64
                    height: width
                    radius: 10
                    color: c
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            if (PathView.isCurrentItem)
                                console.log("Clicked on " + c)
                            else
                                console.log(c + " is not the current item")
                        }
                    }
                }
                Text {
                    text: qsTr(c)
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pointSize: 12
                }
            }
        }

        PathView {
            anchors.fill: parent
            model: myModelId
            delegate: myDelegateId
            focus: true
            path: Path {
                //Starting point
                startX: rootId.width / 2
                startY: rootId.height - 50
                PathAttribute {
                    name: "scale"
                    value: 1
                }

                //Towards left : Q1
                PathCubic {
                    x: 50
                    y: rootId.height / 2
                    control1X: rootId.width / 2 - rootId.width / 8
                    control1Y: rootId.height
                    control2X: 0
                    control2Y: rootId.height / 2 + rootId.height / 8
                }
                PathAttribute {
                    name: "scale"
                    value: 0.5
                }

                //Towards the top: Q2
                PathCubic {
                    x: rootId.width / 2
                    y: 50
                    control1X: 0
                    control1Y: (rootId.height / 2 - rootId.height / 8)
                    control2X: (rootId.width / 2 - rootId.width / 8)
                    control2Y: 0
                }
                PathAttribute {
                    name: "scale"
                    value: 0.3
                }

                //Towards Right: Q3
                PathCubic {
                    x: rootId.width - 50
                    y: rootId.height / 2
                    control1X: rootId.width / 2 + rootId.width / 8
                    control1Y: 0
                    control2X: rootId.width
                    control2Y: rootId.height / 2 - rootId.height / 8
                }
                PathAttribute {
                    name: "scale"
                    value: 0.5
                }

                //Towards bottom: Q4
                PathCubic {
                    x: rootId.width / 2
                    y: rootId.height - 50
                    control1X: rootId.width
                    control1Y: rootId.height / 2 + rootId.height / 8
                    control2X: rootId.width / 2 + rootId.width / 8
                    control2Y: rootId.height
                }
                PathAttribute {
                    name: "scale"
                    value: 1
                }
            }
            Keys.onLeftPressed: decrementCurrentIndex()
            Keys.onRightPressed: incrementCurrentIndex()
        }
    }
}
