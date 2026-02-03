import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("L11_5 Decoration and Section")

    ListModel {
        id: customerInfo
        ListElement {
            name: "Amara"
            sex: "female"
        }
        ListElement {
            name: "Clara"
            sex: "female"
        }
        ListElement {
            name: "Elena"
            sex: "female"
        }
        ListElement {
            name: "Hazel"
            sex: "female"
        }
        ListElement {
            name: "Maya"
            sex: "female"
        }
        ListElement {
            name: "Nova"
            sex: "female"
        }
        ListElement {
            name: "Violet"
            sex: "female"
        }
        ListElement {
            name: "Asher"
            sex: "male"
        }
        ListElement {
            name: "Caleb"
            sex: "male"
        }
        ListElement {
            name: "Felix"
            sex: "male"
        }
        ListElement {
            name: "Jasper"
            sex: "male"
        }
        ListElement {
            name: "Leo"
            sex: "male"
        }
        ListElement {
            name: "Milo"
            sex: "male"
        }
        ListElement {
            name: "Silas"
            sex: "male"
        }
        ListElement {
            name: "River"
            sex: "unisex"
        }
    }

    Component {
        id: delegateId
        Rectangle {
            width: myViewId.width
            height: 50
            Rectangle {
                width: parent.width - 40
                height: parent.height - 10
                anchors.centerIn: parent
                color: "#925391"
                border.color: "#6b246a"
                border.width: 3
                radius: 5
                Text {
                    text: qsTr(name)
                    color: "#f1eaf1"
                    anchors.centerIn: parent
                    font.pointSize: 15
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        console.log(name)
                    }
                }
            }
        }
    }

    Component {
        id: sectionDelegateId

        Rectangle {
            required property string section   // ⭐ BẮT BUỘC

            color: "#6e2c6d"
            width: myViewId.width
            height: 50
            Text {
                text: qsTr(section)
                color: "#efe8ef"
                anchors.fill: parent
                font.pointSize: 20
            }
        }
    }

    ListView {
        id: myViewId
        anchors.fill: parent
        model: customerInfo
        delegate: delegateId
        section.property: "sex"
        section.criteria: ViewSection.FullString
        section.delegate: sectionDelegateId
    }
}
