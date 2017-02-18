import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.0
import QtQuick 2.7


ApplicationWindow
{
    visible: true
    width: Screen.width
    height: Screen.height
    title: qsTr("Hello World")



    Item
    {
        id: item1
        property bool isBigger
    }

    Item
    {
        id: functionalItem
        function someFunction()
        {
            if (parent.item1.isBigger == true)
            {
                parent.rect2.color = "red"
            }
            else
            {
                parent.rect2.color = "blue"
            }
        }
    }

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

    Rectangle
    {
        id: rect

        width: Screen.width / 4
        height: Screen.height / 6

        color: "red"

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Text
        {
            anchors
            {
                left: parent.left
                right: parent.right
                verticalCenter: parent.verticalCenter
            }

            font.bold: true
            font.italic: true


            text: "Click me to turn blue!"
            wrapMode: Text.Wrap
        }

        MouseArea
        {
            id: mouseArea1
            anchors.fill: parent

            onClicked: parent.color = "blue"
        }
    }

    Button
    {
        text: qsTr("Click me to make rectangle red!")

        width: Screen.width / 3

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.topMargin: 5

        onClicked: rect.color = "red"
    }

    Rectangle
    {
        id: rect2

        width: Screen.width / 10
        height: Screen.height

        color: "yellow"

        anchors.top: parent.top
        anchors.verticalCenter: parent.verticalCenter
    }
}
