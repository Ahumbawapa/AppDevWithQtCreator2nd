import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true

    MainForm {
        color: "#000000"
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.fill: parent
        mouseArea.onClicked: {
            Qt.quit();
        }
    }

    Text {
        id: text
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }

    Rectangle {
        id: rectangle1
        x: -100
        y: -222
        width: 200
        height: 200
        color: "#ea4343"
    }

    MouseArea {
        id: mouseArea1
        anchors.fill: parent
    }
}

