import QtQuick
import QtQuick.Controls

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Text Line")
    property int h: 60
    property int w: 140

    Column {
        id: formLoginCredentialId
        anchors.centerIn: parent
        spacing: 10

        Row {
            id: formUsernameId
            spacing: 10

            Rectangle {
                id: labelUsernameWrapId
                width: rootId.w
                height: rootId.h
                color: "#FFFD8F"
                radius: 3
                Text {
                    id: labelUsernameId
                    text: qsTr("Username:")
                    font.pointSize: 20
                    padding: 5
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    color: "#043915"
                }
            }

            Rectangle {
                id: inputUsernameWrapId
                width: rootId.w * 2
                height: rootId.h
                color: "#FFFD8F"
                anchors.verticalCenter: parent.verticalCenter
                radius: 3
                border.color: "#FFCF71"
                border.width: bW
                property int bW: 0 // Border width

                Item {
                    anchors.fill: parent
                    TextInput {
                        id: inputUsernameId
                        padding: 5
                        color: "#043915"
                        font.pointSize: 20
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.verticalCenter: parent.verticalCenter
                        property string placeholderText: "Enter username here..."
                        Text {
                            text: parent.placeholderText
                            color: "#aaa"
                            padding: 5
                            font.pointSize: 20
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.verticalCenter: parent.verticalCenter
                            visible: !inputUsernameId.text // && !inputUsernameId.activeFocus
                        }

                        onActiveFocusChanged: activeFocus => {
                                                  if (activeFocus) {
                                                      inputUsernameWrapId.bW = 3
                                                  } else {
                                                      inputUsernameWrapId.bW = 0
                                                  }
                                              }
                    }
                }
            }
        }

        Row {
            id: formPasswordId
            spacing: 10

            Rectangle {
                id: labelPasswordWrapId
                width: rootId.w
                height: rootId.h
                color: "#B0CE88"
                radius: 3
                Text {
                    id: labelPasswordId
                    text: qsTr("Password:")
                    font.pointSize: 20
                    padding: 5
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    color: "#043915"
                }
            }

            Rectangle {
                id: inputPasswordWrapId
                width: rootId.w * 2
                height: rootId.h
                color: "#B0CE88"
                radius: 3
                border.color: "#FFCF71"
                border.width: bW
                property int bW: 0 // Border width

                Item {
                    anchors.fill: parent

                    TextInput {
                        id: inputPasswordId
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.verticalCenter: parent.verticalCenter
                        padding: 5
                        color: "#043915"
                        font.pointSize: 20
                        echoMode: TextInput.Password
                        property string placeholderText: "Enter Password here..."
                        Text {
                            text: parent.placeholderText
                            color: "#aaa"
                            padding: 5
                            font.pointSize: 20
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.verticalCenter: parent.verticalCenter
                            visible: !inputPasswordId.text // && !inputPasswordId.activeFocus
                        }

                        onActiveFocusChanged: activeFocus => {
                                                  if (activeFocus) {
                                                      inputPasswordWrapId.bW = 3
                                                  } else {
                                                      inputPasswordWrapId.bW = 0
                                                  }
                                              }
                    }
                }
            }
        }

        Rectangle {
            id: btnLoginId
            width: rootId.w
            height: rootId.h
            color: btnColor
            radius: 3
            anchors.horizontalCenter: parent.horizontalCenter
            property string btnColor: "#4C763B"

            Text {
                text: qsTr("Login")
                anchors.centerIn: btnLoginId
                color: "#FFFD8F"
                font.pointSize: 20
            }

            MouseArea {
                anchors.fill: parent

                onPressed: {
                    btnLoginId.btnColor = "#344F1F"
                }

                onReleased: {
                    btnLoginId.btnColor = "#4C763B"
                }
            }
        }
    }
}
