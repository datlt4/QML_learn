import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("L11_2 ListView and ListModel")

    ListModel {
        id: myModelId
        ListElement {
            city: "Cao Bằng"
            number: 11
        }
        ListElement {
            city: "Lạng Sơn"
            number: 12
        }
        ListElement {
            city: "Quảng Ninh"
            number: 14
        }
        ListElement {
            city: "Hải Phòng"
            number: 15
        }
        ListElement {
            city: "Thái Bình"
            number: 17
        }
        ListElement {
            city: "Nam Định"
            number: 18
        }
        ListElement {
            city: "Phú Thọ"
            number: 19
        }
        ListElement {
            city: "Thái Nguyên"
            number: 20
        }
        ListElement {
            city: "Yên Bái"
            number: 21
        }
        ListElement {
            city: "Tuyên Quang"
            number: 22
        }
        ListElement {
            city: "Hà Giang"
            number: 23
        }
        ListElement {
            city: "Lào Cai"
            number: 24
        }
        ListElement {
            city: "Lai Châu"
            number: 25
        }
        ListElement {
            city: "Sơn La"
            number: 26
        }
        ListElement {
            city: "Điện Biên"
            number: 27
        }
        ListElement {
            city: "Hòa Bình"
            number: 28
        }
        ListElement {
            city: "Hà Nội"
            number: 29
        }
        ListElement {
            city: "Hải Dương"
            number: 34
        }
        ListElement {
            city: "Ninh Bình"
            number: 35
        }
        ListElement {
            city: "Thanh Hóa"
            number: 36
        }
        ListElement {
            city: "Nghệ An"
            number: 37
        }
        ListElement {
            city: "Hà Tĩnh"
            number: 38
        }
        ListElement {
            city: "Đà Nẵng"
            number: 43
        }
        ListElement {
            city: "Đắk Lắk"
            number: 47
        }
        ListElement {
            city: "Đắk Nông"
            number: 48
        }
        ListElement {
            city: "Lâm Đồng"
            number: 49
        }
        ListElement {
            city: "TP. Hồ Chí Minh"
            number: 59
        }
        ListElement {
            city: "Đồng Nai"
            number: 60
        }
        ListElement {
            city: "Bình Dương"
            number: 61
        }
        ListElement {
            city: "Long An"
            number: 62
        }
        ListElement {
            city: "Tiền Giang"
            number: 63
        }
        ListElement {
            city: "Vĩnh Long"
            number: 64
        }
        ListElement {
            city: "Cần Thơ"
            number: 65
        }
        ListElement {
            city: "Đồng Tháp"
            number: 66
        }
        ListElement {
            city: "An Giang"
            number: 67
        }
        ListElement {
            city: "Kiên Giang"
            number: 68
        }
        ListElement {
            city: "Cà Mau"
            number: 69
        }
        ListElement {
            city: "Tây Ninh"
            number: 70
        }
        ListElement {
            city: "Bến Tre"
            number: 71
        }
        ListElement {
            city: "Bà Rịa - Vũng Tàu"
            number: 72
        }
        ListElement {
            city: "Quảng Bình"
            number: 73
        }
        ListElement {
            city: "Quảng Trị"
            number: 74
        }
        ListElement {
            city: "Thừa Thiên Huế"
            number: 75
        }
        ListElement {
            city: "Quảng Ngãi"
            number: 76
        }
        ListElement {
            city: "Bình Định"
            number: 77
        }
        ListElement {
            city: "Phú Yên"
            number: 78
        }
        ListElement {
            city: "Khánh Hòa"
            number: 79
        }
        ListElement {
            city: "Gia Lai"
            number: 81
        }
        ListElement {
            city: "Kon Tum"
            number: 82
        }
        ListElement {
            city: "Sóc Trăng"
            number: 83
        }
        ListElement {
            city: "Trà Vinh"
            number: 84
        }
        ListElement {
            city: "Ninh Thuận"
            number: 85
        }
        ListElement {
            city: "Bình Thuận"
            number: 86
        }
        ListElement {
            city: "Vĩnh Phúc"
            number: 88
        }
        ListElement {
            city: "Hưng Yên"
            number: 89
        }
        ListElement {
            city: "Hà Nam"
            number: 90
        }
        ListElement {
            city: "Quảng Nam"
            number: 92
        }
        ListElement {
            city: "Bình Phước"
            number: 93
        }
        ListElement {
            city: "Bạc Liêu"
            number: 94
        }
        ListElement {
            city: "Hậu Giang"
            number: 95
        }
        ListElement {
            city: "Bắc Kạn"
            number: 97
        }
        ListElement {
            city: "Bắc Giang"
            number: 98
        }
        ListElement {
            city: "Bắc Ninh"
            number: 99
        }
    }

    Component {
        id: myDelegateId

        Rectangle {
            height: 80
            width: myViewId.width
            Rectangle {
                width: parent.width - 30
                height: parent.height - 20
                anchors.centerIn: parent
                color: "#3eb1d4"
                border.color: "#113663"
                radius: 5
                Text {
                    id: textId
                    color: "#06437a"
                    text: qsTr("City: " + city + " - license plate: " + number)
                    font.pointSize: 15
                    anchors.centerIn: parent
                }
                MouseArea {
                    onClicked: () => console.log("Clicked " + "City: " + city + " - license plate: " + number)
                    anchors.fill: parent
                }
            }
        }
    }

    ListView {
        id: myViewId
        anchors.fill: parent
        model: myModelId
        delegate: myDelegateId
    }
}
