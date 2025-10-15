import QtQuick

FocusScope {
    property alias rectColor: rectId.color
    property alias textColor: rectTextId.color
    property alias borderColor: rectId.border.color
    property alias text: rectTextId.text
    signal needFocus()

    implicitHeight: rectId.height
    implicitWidth: rectId.width

    Rectangle {
        id: rectId
        width: 250
        height: 200
        radius: 40
        focus: true
        border.width: 5

        Text {
            id: rectTextId
            anchors.centerIn: parent
            font.pointSize: 20
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                needFocus()
            }
        }

        Keys.onPressed: event => {
                            console.log(text, event.key)
                        }
    }
}
