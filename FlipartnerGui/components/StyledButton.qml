import QtQuick 2.12
import QtQuick.Controls 2.12

Button {
    id: control

    property bool suggested: false

    background: Rectangle {
        id: buttonBg
        color: "#222"
        border.color: "white"
        border.width: 1

        implicitWidth: 100
        implicitHeight: 40

        radius: 6

    }

    contentItem: Text {
        id: buttonText
        text: parent.text
        color: "white"

        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter

        font.capitalization: Font.AllUppercase
        font.bold: true
    }

    states: [
        State {
            name: "down"
            when: control.down
            PropertyChanges {
                target: buttonBg
                color: "#888"
                border.width: 0
            }

            PropertyChanges {
                target: buttonText
                color: "black"
            }
        },

        State {
            name: "suggested"
            when: control.suggested && control.enabled
            PropertyChanges {
                target: buttonBg
                color: "#5eba7d"
                border.width: 1
                border.color: "#6FA"
            }

            PropertyChanges {
                target: buttonText
                color: "black"
            }
        },

        State {
            name: "disabled"
            when: !control.enabled
            PropertyChanges {
                target: buttonBg
                color: "#33000000"
                border.color: "#22FFFFFF"
            }

            PropertyChanges {
                target: buttonText
                color: "white"
            }
        }
    ]
}