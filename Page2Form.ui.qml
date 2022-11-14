import QtQuick 2.15
import QtQuick.Controls 2.0

Item {
    property alias title: title.text
    property alias subtitle: subtitle.text
    property alias details: details.text
    property alias imageSource: image.source
    Image {
        id: image
        width: 100
        height: 100
        anchors.topMargin: 100
        anchors.leftMargin: 100
        anchors.top: parent.top
        anchors.left: parent.left
    }

    Label {
        id: title
        text: "Mr. X"
        font.pixelSize: 50
        anchors.top: image.top
        anchors.left: image.right
        anchors.leftMargin: 30
    }

    Label {
        id: subtitle
        text: "Homer J. Simpson"
        font.pixelSize: 30
        anchors.top: title.bottom
        anchors.topMargin: 10
        anchors.left: image.right
        anchors.leftMargin: 30
    }

    Label {
        id: details
        text: "details"
        font.pixelSize: 30
        anchors.top: subtitle.bottom
        anchors.topMargin: 10
        anchors.left: subtitle.left
    }
}
