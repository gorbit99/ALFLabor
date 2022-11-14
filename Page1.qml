import QtQuick 2.15

Page1Form {
    signal loginPressed(var username, var password)

    button.onClicked: {
        loginPressed(username, password)
    }
}
