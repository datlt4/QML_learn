import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - ApplicationWindow")

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            Action {
                id: newAction
                text: qsTr("&New...")
                onTriggered: console.log("New ...")
                icon.source: "qrc:/icons/newFileIcon.png"
            }
            Action {
                id: openAction
                text: qsTr("&Open...")
                onTriggered: console.log("Open...")
                icon.source: "qrc:/icons/openIcon.png"
            }
            Action {
                id: saveAction
                text: qsTr("&Save")
                onTriggered: console.log("Save")
                icon.source: "qrc:/icons/saveIcon.png"
            }
            Action {
                id: saveAsAction
                text: qsTr("Save &As...")
                onTriggered: console.log("Save As")
                icon.source: "qrc:/icons/saveAsIcon.png"
            }
            MenuSeparator {}
            Action {
                id: quitAction
                text: qsTr("&Quit")
                onTriggered: console.log("Quit")
                icon.source: "qrc:/icons/quitIcon.png"
            }
        }
        Menu {
            title: qsTr("&Edit")
            Action {
                id: cutAction
                text: qsTr("Cu&t")
                onTriggered: console.log("Cut")
                icon.source: "qrc:/icons/cutIcon.png"
            }
            Action {
                id: copyAction
                text: qsTr("&Copy")
                onTriggered: console.log("Copy")
                icon.source: "qrc:/icons/copyIcon.png"
            }
            Action {
                id: pasteAction
                text: qsTr("&Paste")
                onTriggered: console.log("Past")
                icon.source: "qrc:/icons/pasteIcon.png"
            }
        }
        Menu {
            title: qsTr("&Help")
            Action {
                id: aboutAction
                text: qsTr("&About")
                onTriggered: console.log("About")
                icon.source: "qrc:/icons/info.png"
            }
        }
    }

    header: ToolBar {
        Row {
            anchors.fill: parent
            ToolButton {
                action: newAction
            }
            ToolButton {
                action: saveAction
            }
            ToolButton {
                action: saveAsAction
            }
            ToolButton {
                action: quitAction
            }
        }
    }

    footer: TabBar {
        id: tabBarId
        width: parent.width

        TabButton {
            text: "Page1"
            onClicked: function () {
                stackId.pop()
                stackId.push("Page1.qml")
                console.log("Numbers of stack items: " + stackId.depth)
            }
        }
        TabButton {
            text: "Page2"
            onClicked: function () {
                stackId.pop()
                stackId.push("Page2.qml")
                console.log("Numbers of stack items: " + stackId.depth)
            }
        }
        TabButton {
            text: "Page3"
            onClicked: function () {
                stackId.pop()
                stackId.push("Page3.qml")
                console.log("Numbers of stack items: " + stackId.depth)
            }
        }
        TabButton {
            text: "Page4"
            onClicked: function () {
                stackId.pop()
                stackId.push("Page4.qml")
                console.log("Numbers of stack items: " + stackId.depth)
            }
        }
        TabButton {
            text: "Page5"
            onClicked: function () {
                stackId.pop()
                stackId.push("Page5.qml")
                console.log("Numbers of stack items: " + stackId.depth)
            }
        }
    }

    //Main content
    StackView {
        id: stackId
        anchors.fill: parent
        initialItem: Page1 {}
    }
}
