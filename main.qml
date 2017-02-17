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
        width: 200
        height: 100
        color: "red"

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Text
        {
            anchors.centerIn: parent
            text: "Hello, World!"
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
        text: qsTr("Hello World!")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.topMargin: 5

        onClicked: rect.color = "red"
    }

    Rectangle
    {
        id: rect2
        width: 100
        height: 100
        color: "yellow"

        anchors.top: parent.top
        anchors.verticalCenter: parent.verticalCenter
    }
}
