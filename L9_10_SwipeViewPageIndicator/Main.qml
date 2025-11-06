import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Swipe View Page Indicator")

    SwipeView {
        id: view

        currentIndex: 1
        anchors.fill: parent
        focus: true

        Item {
            id: p1
            Image {
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
                source: "qrc:/images/499503202_2163547444081855_7290185599450784418_n.jpg"
            }
        }
        Item {
            id: p2
            Image {
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
                source: "qrc:/images/500848189_2169231250180141_209551542658879089_n.jpg"
            }
        }
        Item {
            id: p3
            Image {
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
                source: "qrc:/images/501669158_2169231200180146_490546309070415351_n.jpg"
            }
        }
        Item {
            id: p4
            Image {
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
                source: "qrc:/images/480687225_2087508565019077_9035317453601345641_n.jpg"
            }
        }
        Item {
            id: p5
            Image {
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
                source: "qrc:/images/481128239_2087508635019070_5351633556119221901_n.jpg"
            }
        }
        Item {
            id: p6
            Image {
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
                source: "qrc:/images/480743943_2087508591685741_6447659269095078401_n.jpg"
            }
        }
        Item {
            id: p7
            Image {
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
                source: "qrc:/images/422772868_122126059442109154_2689902235878989290_n.jpg"
            }
        }
        Item {
            id: p8
            Image {
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
                source: "qrc:/images/382111409_199927789773960_7868107960252762207_n.jpg"
            }
        }
        Item {
            id: p9
            Image {
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
                source: "qrc:/images/431315872_1843352049434731_8690507193226399847_n.jpg"
            }
        }
        onCurrentIndexChanged: {
            console.log("Current Index: " + view.currentIndex)
        }
        Keys.onPressed: event => {
                            console.log(event.key)
                        }
    }

    PageIndicator {
        id: indicator

        count: view.count
        currentIndex: view.currentIndex

        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
