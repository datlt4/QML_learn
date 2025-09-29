import QtQuick

Window {
    id: appId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Image")
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
            id: imageFromWorkingDir
            x: 10
            y: 20
            width: 100
            height: 100
            // Load the image from working directory
            source: "file:LearnQt.png"
        }

        Image{
            x: 150
            y: 50
            width: 100
            height: 100
            // Load the image from a resource file
            source: "qrc:/images/LearnQt.png"
        }

        Image {
            x: 300
            y: 50
            width: 100
            height: 100
            //Specify the full path to the image
            source: "file:////Users/mabu/Downloads/LearnQt.png" // platform-dependent(windows)
        }

        Image {
            x: 450
            y: 50
            width: 100
            height: 100
            //Specify the full web path to the image
            source: "https://www.learnqt.guide/assets/blog/image/LearnQt.png"
        }

    }
}
