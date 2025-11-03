import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - CheckBox")

    ColumnLayout {
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right

        Rectangle {
            width: 600
            height: 100
            Layout.alignment: Qt.AlignCenter
            Layout.topMargin: 10
            color: "#5EB1BF"
            radius: 15
            Text {
                text: qsTr("Hoàng Sa, Trường Sa là của nước nào?")
                font.pointSize: 15
                anchors.centerIn: parent
                font.bold: true
            }
        }

        RowLayout {
            Layout.fillWidth: true
            CheckBox {
                id: vietnamOptionId
                text: "Việt Nam"
                checked: true
                Layout.leftMargin: 10
                onCheckedChanged: () => {
                                      if (checked) {
                                          console.log("checked:", checked)
                                      } else {
                                          console.log("unchecked:", checked)
                                      }
                                  }
            }

            CheckBox {
                text: "Trung Quốc"
                Layout.leftMargin: 10
                enabled: false
            }

            CheckBox {
                text: "Hoa Kỳ"
                Layout.leftMargin: 10
                onCheckedChanged: () => {
                                      vietnamOptionId.checked = true
                                      checked = false
                                  }
            }
        }
    }
}
