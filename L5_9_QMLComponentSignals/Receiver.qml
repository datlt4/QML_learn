import QtQuick

Item {
    property int count: 0
    property var changeCountHandler: new_count => {
                                         count = new_count
                                     }
    property var changeCountHandler2: new_count => {
                                          console.log("COUNT VALUE changed to", new_count)
                                      }
    width: receiverRectId.width
    height: receiverRectId.height

    Rectangle {
        id: receiverRectId
        color: "#124170"
        radius: 15
        width: 200
        height: 200

        Text {
            id: receiverTextId
            text: count
            font.pointSize: 100
            color: "#FEF3E2"
            anchors.centerIn: parent
        }

        // MouseArea {
        //     anchors.fill: parent
        //     onClicked: {

        //     }
        // }
    }
}
