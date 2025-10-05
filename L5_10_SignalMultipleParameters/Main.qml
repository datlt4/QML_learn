import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Signal with multiple parameters")

    Rectangle {
        id: rectId
        anchors.centerIn: parent
        width: rootId.width * 0.5
        height: rootId.height * 0.5
        color: "#6A0066"
        radius: 15

        signal userInfo(string firstName, string lastName, int age)

        // onUserInfo: firstName => {
        //                 console.log("First name:", firstName)
        //             }

        // onUserInfo: (firstName, lastName)=>{
        //                 console.log("First name:", firstName, ", Last name:", lastName)
        //             }

        onUserInfo: (firstName, lastName, age)=>{
                        console.log("First name:", firstName, ", Last name:", lastName, ", Age:", age)
                    }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                rectId.userInfo("我是越南人。", "我正在学习中文。", 18)
            }
        }
    }
}
