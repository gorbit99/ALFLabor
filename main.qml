import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    SwipeView {
        id: swipeView
        currentIndex: 0
        anchors.fill: parent
        Page1 {
            objectName: "page1Object"
        }
        Page2 {
            id: page2
        }
        Connections {
            target: networkManager
            onLoginSuccess: {
                swipeView.currentIndex = 1
                page2.imageSource = imageSource
                page2.title = title
                page2.subtitle = subtitle
                page2.details = details
            }
        }
    }
}
