import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.0

ApplicationWindow
{
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    // menu items
    menuBar: MenuBar
    {
        id: menuBar
        Menu
        {
            title: qsTr("File")
            MenuItem
            {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem
            {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }

    // Content
    Button
    {
        text: qsTr("Hello World!")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    Rectangle {
        width: 200
        height: 100
        color: "red"

        Text {
            anchors.centerIn: parent
            text: "Hello, World!"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: parent.color = "blue"
        }
    }
}
