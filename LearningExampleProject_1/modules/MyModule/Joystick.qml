import QtQuick
import MyModule

Item {
    id: root
    width: 150
    height: 150
    anchors {
        bottom: parent.bottom
        horizontalCenter: parent.horizontalCenter
        bottomMargin: 20
    }

    // Custom Properties
    property real joyX: 0
    property real joyY: 0

    // Knob properties
    readonly property real radius: width / 2
    readonly property real knobRadius: 30

    // changing from knob movement to knob position based control
    property string command: "None"


    // Bg circle
    Rectangle {
        anchors.fill: parent
        radius: root.radius // round it
        color: "#33333388"
    }

    // Action labels (lift, down, open, close)
    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        width: parent.width
        height: parent.height / 3
        color: "transparent"
        Text {
            anchors.centerIn: parent
            text: "Lift"
            color: "white"
            font.bold: true
        }
    }

    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        width: parent.width
        height: parent.height / 3
        color: "transparent"
        Text {
            anchors.centerIn: parent
            text: "Lower"
            color: "white"
            font.bold: true
        }
    }

    Rectangle {
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        width: parent.width / 3
        height: parent.height
        color: "transparent"
        Text {
            anchors.centerIn: parent
            text: "Close"
            color: "white"
            font.bold: true
        }
    }

    Rectangle {
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        width: parent.width / 3
        height: parent.height
        color: "transparent"
        Text {
            anchors.centerIn: parent
            text: "Open"
            color: "white"
            font.bold: true
        }
    }

    // movable knob
    Rectangle {
        id: knob
        width: root.knobRadius * 2
        height: root.knobRadius * 2
        radius: root.knobRadius
        color: "#ffffffcc"

        // cannot use anchoring with a draggable element
        x: root.width / 2 - width / 2
        y: root.height / 2 -  height / 2


        MouseArea {
            anchors.fill: parent
            drag.target: knob
            drag.axis: Drag.XAndYAxis

            drag.minimumX: 0
            drag.maximumX: root.width - parent.width
            drag.minimumY: 0
            drag.maximumY: root.height - parent.height

            onPositionChanged: {
                parent.color = 'red'

                // calculate the knob's position relative to the center to determine the region
                let centerPos = root.radius - root.knobRadius
                let dx = knob.x - centerPos
                let dy = knob.y - centerPos

                //let maxDist = root.radius - root.knobRadius

                // normalize
                let nx = dx / (root.radius - root.knobRadius)
                let ny = dy / (root.radius - root.knobRadius)

                //root.joyX = dx / maxDist
                //root.joyY = dy / maxDist

                // Determine region
                if (Math.abs(nx) < 0.4 && ny < -0.6) {
                    root.command = "Lift"
                } else if (Math.abs(nx) < 0.4 && ny > 0.6) {
                    root.command = "Lower"
                } else if (Math.abs(ny) < 0.4 && nx < -0.6) {
                    root.command = "Close"
                } else if (Math.abs(ny) < 0.4 && nx > 0.6) {
                    root.command = "Open"
                } else {
                    root.command = "None"
                }
            }

            onReleased: {
                // reset to center
                parent.color = '#ffffffcc'
                knob.x = root.radius - root.knobRadius
                knob.y = root.radius - root.knobRadius

                // -- previous impl
                //root.joyX = 0
                //root.joyY = 0
                // --

                root.command = "None"
            }
        }

    }
}
