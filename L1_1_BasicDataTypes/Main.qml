import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Basic Data Types")

    property string mString: "https://pangolin.ft-tech.io.vn"
    property int mInt: 23
    property bool isFemale: true
    property double mDouble: 24.8
    property url mURL: "https://pangolin.ft-tech.io.vn"

    property var aNumber: 100
    property var aBool: false
    property var aString: "Hello world!"
    property var anotherString: String("#FF008800")
    property var aColor: Qt.rgba(0.2, 0.3, 0.4, 0.5)
    property var aRect: Qt.rect(10, 20, 30, 40)
    property var aPoint: Qt.point(10, 40)
    property var aSize: Qt.size(10, 30)
    property var aVector3d: Qt.vector3d(100, 200, 300)
    property var aFunction: (function () {
        return "one"
    })
    property var anArray: [1, 2, 3, "four", "five", (function () {
        return "six"
    })]
    property var anObject: {
        "foo": 10,
        "bar": 20
    }
    property var aFont: Qt.font({family: "Consolas", pointSize: 30, bold: isFemale ? true : false})
    property var mDate: "2025-08-16"

    Rectangle {
        id: orangeRect
        anchors.centerIn: parent
        color: "orange"
        border.width: 2
        radius: 5
        width: 450
        height: 100 + mInt

        Text {
            id: purpleText
            text: qsTr(mString)
            color: "purple"
            // font.bold: isFemale ? true : false
            font: aFont
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Purple Clicked")
            }
        }
    }

    Component.onCompleted: {
        console.log("App is running")
        print("The value of mString is", mString)
        console.log("The value of mInt is", mInt)

        if (isFemale) {
            console.log("You may wear a dress")
        } else {
            console.log("You may wear a suit")
        }

        console.log("The value of mDouble is: " + mDouble)
        console.log("The value of mUrl is: " + mURL)

        if (mString === mURL) {
            console.log("They are the same")
        } else {

            console.log("They are NOT the same")
        }

        if (mString == mURL) {
            console.log("They are the same value")
        } else {
            console.log("They are NOT the same value")
        }

        console.log("My child borned at", mDate)

        console.log("-----------------Playing with var datatype---------------")
        console.log("The vale of aNumber is:", 100)
        console.log("The vale of aBool is:", aBool)
        console.log("The value of aString is:", aString)
        console.log("The value of anotherString is:", anotherString)
        console.log("The components of aRect are: x:" + aRect.x + ", y: " + aRect.y + ", w:" + aRect.width + ", h:" + aRect.height)
        console.log("The components of aPoint: (x:" + aPoint.x + ", y:" + aPoint.y + ")")
        console.log("The components of aSize are: (w:", aSize.width, ", h:", aSize.height, ")")
        console.log("The components of aVector3d are: (x:" + aVector3d.x + ", y:" + aVector3d.y + ", z:" + aVector3d.z + ")")

        console.log("--------------------Playing with LIST--------------------")
        console.log("The length of anArray is:", anArray.length)
        console.log("The lastIndexOf of anArray is:", anArray.lastIndexOf())
        console.log("--- List items in anArray:")
        for (var idx = 0; idx < anArray.length; ++idx) {
            console.log("\tItem [" + idx + "]: " + anArray[idx])
        }

        console.log("--- List items in anArray:")
        for (const item of anArray) {
            console.log("\tItem = " + item)
        }

        console.log("--- List items in anArray:")
        anArray.forEach((item, idx) => {
                            console.log("\tItem[" + idx + "] = " + item)
                        })

        console.log("--- List object in anObject:")
        for (const key in anObject) {
            console.log("\tObject[" + key + "]: " + anObject[key])
        }
    }
}
