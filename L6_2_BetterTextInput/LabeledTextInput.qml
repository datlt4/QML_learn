import QtQuick

Item {
    id: formItem
    property alias spacing: formId.spacing
    property alias label: labelId.text
    readonly property alias text: inputId.text
    property alias placeholder: inputPlaceHolderId.text
    required property int baseW
    required property int baseH
    property alias echoMode: inputId.echoMode

    implicitHeight: formId.implicitHeight
    implicitWidth: formId.implicitWidth

    Row {
        id: formId
        spacing: 10

        Rectangle {
            id: labelWrapId
            width: baseW
            height: baseH
            color: "#B0CE88"
            radius: 3
            Text {
                id: labelId
                text: qsTr("")
                font.pointSize: 20
                padding: 5
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                color: "#043915"
            }
        }

        Rectangle {
            id: inputWrapId
            width: baseW * 2
            height: baseH
            color: "#B0CE88"
            radius: 3
            border.color: "#FFCF71"
            border.width: bW
            property int bW: 0 // Border width

            Item {
                anchors.fill: parent

                TextInput {
                    id: inputId
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    padding: 5
                    color: "#043915"
                    font.pointSize: 20
                    // echoMode:
                    Text {
                        id: inputPlaceHolderId
                        color: "#aaa"
                        text: qsTr("")
                        padding: 5
                        font.pointSize: 20
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.verticalCenter: parent.verticalCenter
                        visible: !inputId.text // && !inputId.activeFocus
                    }

                    onActiveFocusChanged: activeFocus => {
                                              if (activeFocus) {
                                                  inputWrapId.bW = 3
                                              } else {
                                                  inputWrapId.bW = 0
                                              }
                                          }
                }
            }
        }
    }
}
