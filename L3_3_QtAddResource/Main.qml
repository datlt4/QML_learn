import QtQuick

Window {
    id: appId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Add Resource")
    property string borderColor: "#EBEFBF"
    property int paddingValue: 30

    Item {
        x: paddingValue
        y: paddingValue
        width: appId.width - 2 * paddingValue
        height: appId.height - 2 * paddingValue

        Rectangle {
            anchors.fill: parent
            color: "beige"
            border {
                color: borderColor
                width: 3
            }
            radius: 10
        }

        Image {
            id: mImageId
            width: 200
            height: 200
            anchors.centerIn: parent
            source: "qrc:/images/LearnQt.png"
        }
    }
}
