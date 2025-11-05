import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - ComboBox")

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 30
        Label {
            text: "Non Editable Combo"
            wrapMode: Label.Wrap
            Layout.fillWidth: true
        }

        ComboBox {
            id: notEdiableComboBoxId
            editable: false
            Layout.fillWidth: true
            model: ListModel {
                ListElement {
                    text: qsTr("Banana")
                }
                ListElement {
                    text: qsTr("Apple")
                }
                ListElement {
                    text: qsTr("Coconut")
                }
            }

            onActivated: idx => {
                             console.log(notEdiableComboBoxId.currentValue)
                             console.log(notEdiableComboBoxId.currentIndex)
                             console.log(notEdiableComboBoxId.currentText)
                         }
        }

        Label {
            text: "Editable Combo"
            wrapMode: Label.Wrap
            Layout.fillWidth: true
        }

        ComboBox {
            id: ediableComboBoxId
            editable: true
            Layout.fillWidth: true
            textRole: "text"
            model: ListModel {
                ListElement {
                    text: qsTr("Banana")
                    taste: "Ngọt"
                    smell: "Thơm"
                }
                ListElement {
                    text: qsTr("Apple")
                    taste: "Ngọt. Ngọt"
                    smell: "Thơm. Ngọt"
                }
                ListElement {
                    text: qsTr("Coconut")
                    taste: "Ngọt. Ngọt. Ngọt"
                    smell: "Thơm. Thơm. Thơm"
                }
            }
            onAccepted: {
                if (find(editText) === -1)
                    model.append({
                                     "text": editText,
                                     "taste": "Ngọt. Ngọt. Ngọt. Ngọt",
                                     "smell": "Thơm. Thơm. Thơm. Thơm"
                                 })
            }

            onActivated: idx => {
                             console.log(ediableComboBoxId.currentValue)
                             console.log(ediableComboBoxId.currentIndex)
                             console.log(ediableComboBoxId.currentText)
                             console.log(model.get(ediableComboBoxId.currentIndex).taste)
                             console.log(model.get(ediableComboBoxId.currentIndex).smell)
                         }
        }

        Button {
            text: "Submit"
            Layout.preferredWidth: parent.width * 0.4
            Layout.alignment: Qt.AlignCenter
            // Layout.fillWidth: true
            Layout.topMargin: 10
        }

        Item {
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
