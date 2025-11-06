import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Range Slider")

    RangeSlider {
        anchors.centerIn: parent
        width: parent.width*0.6
        from: 1
        to: 100
        first.value: 25
        second.value: 75
        first.onValueChanged: ()=>{
                                  console.log("first.value:", first.value)
                              }
        second.onValueChanged: ()=>{
                                  console.log("second.value:", second.value)
                              }
    }
}
