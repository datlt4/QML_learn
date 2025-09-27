import QtQuick

Window {
    id: mainAppId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Property Change Handler")
    property string lang1: qsTr("Python")
    property string aFramework: qsTr("Flask is a lightweight WSGI web application framework.")

    onLang1Changed:  {
        console.log("change value of lang1:", mainAppId.lang1)
    }

    onAFrameworkChanged: {
        console.log("change value of lang1:", aFramework)
    }

    onTitleChanged:
    {
        console.log("Change app title:", mainAppId.title)
    }

    Rectangle {
        color: "greenyellow"
        width: 300
        height: 100
        anchors.centerIn: parent

        MouseArea {
            anchors.fill: parent
            onClicked: {
                mainAppId.lang1 = qsTr("C++")
                mainAppId.aFramework = qsTr("The Qt Project is an open collaboration effort to coordinate the development of the Qt software framework and tools.")
                mainAppId.title = "Learn QML in C++ examples"
            }
        }
    }

    Component.onCompleted: {
        console.log("Before change:")
        console.log("\tlang1:", lang1)
        console.log("\taFramework:", mainAppId.aFramework)
        console.log("\tmainAppId.title:", mainAppId.title)
    }
}
