import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Click To Qt Projects")

    Image {
        id:avatar
        width: 150
        height: 150
        anchors.centerIn: parent
        source:"avatar.jpg"
        mirror:false
        fillMode: Image.PreserveAspectCrop

        Rectangle {
            id:overlay
            anchors.fill: parent
            visible: false
            color : "green"
            opacity: 0.23
        }

        MouseArea {
            id:mouse
            anchors.fill: parent
            hoverEnabled: true
            onEntered: {
                overlay.visible=true
                parent.mirror=true
            }
            onExited: {
                overlay.visible=false
                parent.mirror=false
            }
            onClicked: Qt.openUrlExternally("https://github.com/selimsyl/Qt-Projects")
        }
    }
}
