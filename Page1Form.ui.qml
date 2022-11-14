import QtQuick 2.15
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.6

Item {
    property alias button: button
    property alias username: userNameTextField.text
    property alias password: passwordTextField.text

    Label {
        text: "Melmac Friends"
        font.weight: Font.ExtraLight
        font.pixelSize: 55
        horizontalAlignment: "AlignHCenter"
        verticalAlignment: "AlignVCenter"
        anchors.topMargin: 30
        anchors.horizontalCenter: parent.horizontalCenter
        id: label
    }

    ColumnLayout {
        anchors.top: label.bottom
        anchors.topMargin: 50
        anchors.horizontalCenter: parent.horizontalCenter
        width: 250

        Label {
            text: "Username"
        }
        TextField {
            id: userNameTextField
            anchors.left: parent.left
            anchors.right: parent.right
        }

        Label {
            text: "Password"
        }
        TextField {
            id: passwordTextField
            echoMode: TextInput.Password
            anchors.left: parent.left
            anchors.right: parent.right
        }

        Button {
            text: "Login"
            anchors.horizontalCenter: parent.horizontalCenter
            id: button
        }
    }
}
