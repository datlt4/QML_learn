import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Demo Qt Global Objects")
    property string md5HashValue: Qt.md5("Hello World!")
    readonly property var lFontFamily: Qt.fontFamilies()

    Text {
        id: redTextInCenter
        color: Qt.rgba(1, 0, 0, 1)
        text: md5HashValue
        anchors.centerIn: parent
        font.pointSize: 30
    }

    Rectangle {
        id: blueRect
        color: "dodgerblue"
        width: 100
        height: 100
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        MouseArea {
            anchors.fill: parent
            onClicked: {
                // Posts a quit request to the Qt application event loop
                // Qt.quit() doesn’t force an instant exit (like exit(0) in C++).
                // It signals the event loop: "Please quit when it’s safe (after finishing the current event handler)."
                Qt.quit()

                // Loop through the fonts
                lFontFamily.forEach((fontFamily, idx) => {
                                        console.log("\tFont[" + (idx + 1) + "]: " + fontFamily)
                                    })

                for (const fontFamily of lFontFamily) {
                    console.log("\tFont[i]: " + fontFamily)
                }

                for (var i = 0; i < lFontFamily.length; ++i) {
                    console.log("\tFont[" + (i + 1) + "]: " + lFontFamily[i])
                }

                // Hash a String
                md5HashValue = Qt.md5("I am learning QML.")
                console.log("md5 hash value:", md5HashValue)

                // Open URL externals
                Qt.openUrlExternally("https://gitea.ft-tech.io.vn/datlt4/QML_learn")
                Qt.openUrlExternally("file:///Users/mabu/Downloads/AI generated/474625365_2066596610443606_2646760107196506376_n.jpg")

                // Capture platform info
                console.log("Current OS:", Qt.platform.os)

                // Only after the handler finishes, the event loop processes the quit request.
            }
        }
    }
}
