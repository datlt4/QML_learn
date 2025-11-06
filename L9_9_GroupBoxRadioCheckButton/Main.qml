import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 800
    visible: true
    title: qsTr("GroupBox, RadioButton and CheckBox")

    ColumnLayout {
        id: radioContainerId
        anchors.centerIn: parent
        spacing: 10

        // RadioButton controls
        Label {
            wrapMode: Label.Wrap
            text: "A GroupBox wrapping around RadioButtons."
        }

        function handleRadioBtnChanged(text, checked) {
            if (checked) {
                console.log("Radio Button", text, "selected!")
            }
        }

        GroupBox {
            title: qsTr("Choose Dessert")
            Layout.fillWidth: true
            ColumnLayout {
                RadioButton {
                    checked: true
                    text: qsTr("Coke")
                    onCheckedChanged: () => {
                                          radioContainerId.handleRadioBtnChanged(text, checked)
                                      }
                }
                RadioButton {
                    text: qsTr("Green Tea")
                    onCheckedChanged: () => {
                                          radioContainerId.handleRadioBtnChanged(text, checked)
                                      }
                }
                RadioButton {
                    text: qsTr("Ice Cream")
                    onCheckedChanged: () => {
                                          radioContainerId.handleRadioBtnChanged(text, checked)
                                      }
                }
            }
        }

        // Checkbox controls
        Label {
            wrapMode: Label.Wrap
            text: qsTr("A GroupBox wrapping around CheckBoxes.")
        }

        GroupBox {
            id: checkContainerId
            title: qsTr("Choose Qt supported Desktop Platform")
            font.bold: true
            Layout.fillWidth: true
            function handleRadioBtnChanged(text, checked) {
                if (checked) {
                    console.log("Radio Button", text, "selected!")
                }
            }
            ColumnLayout {
                anchors.fill: parent
                CheckBox {
                    checked: true
                    text: qsTr("Windows")
                    onCheckedChanged: () => {
                                          checkContainerId.handleRadioBtnChanged(text, checked)
                                      }
                }
                CheckBox {
                    text: qsTr("Mac")
                    onCheckedChanged: () => {
                                          checkContainerId.handleRadioBtnChanged(text, checked)
                                      }
                }
                CheckBox {
                    checked: true
                    text: qsTr("Linux")
                    onCheckedChanged: () => {
                                          checkContainerId.handleRadioBtnChanged(text, checked)
                                      }
                }
            }
        }

        // Disable and enable a groupbox
        Label {
            wrapMode: Label.Wrap
            text: qsTr("A Groupbox that can be enabled and disabled")
        }

        GroupBox {
            label: CheckBox {
                id: checkBox
                checked: true
                text: checked ? qsTr("Enabled") : qsTr("Disabled")
            }
            Layout.fillWidth: true

            ColumnLayout {
                anchors.fill: parent
                enabled: checkBox.checked
                CheckBox {
                    text: qsTr("E-mail")
                }
                CheckBox {
                    text: qsTr("Calendar")
                }
                CheckBox {
                    text: qsTr("Contacts")
                }
            }
        }
    }
}
