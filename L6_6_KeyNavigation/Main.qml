import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML - Key Navigation")

    Grid {
        id: gridRectId
        columns: 5
        rows: 5
        anchors.centerIn: parent
        spacing: 10

        Cell {
            id: cell00
            text: "(0, 0)"
            hasFocus: true
            navUp: cell40.cellId
            navDown: cell10.cellId
            navLeft: cell04.cellId
            navRight: cell01.cellId
        }

        Cell {
            id: cell01
            text: "(0, 1)"
            navUp: cell41.cellId
            navDown: cell11.cellId
            navLeft: cell00.cellId
            navRight: cell02.cellId
        }

        Cell {
            id: cell02
            text: "(0, 2)"
            navUp: cell42.cellId
            navDown: cell12.cellId
            navLeft: cell01.cellId
            navRight: cell03.cellId
        }

        Cell {
            id: cell03
            text: "(0, 3)"
            navUp: cell43.cellId
            navDown: cell13.cellId
            navLeft: cell02.cellId
            navRight: cell04.cellId
        }

        Cell {
            id: cell04
            text: "(0, 4)"
            navUp: cell44.cellId
            navDown: cell14.cellId
            navLeft: cell03.cellId
            navRight: cell00.cellId
        }

        Cell {
            id: cell10
            text: "(1, 0)"
            navUp: cell00.cellId
            navDown: cell20.cellId
            navLeft: cell14.cellId
            navRight: cell11.cellId
        }

        Cell {
            id: cell11
            text: "(1, 1)"
            navUp: cell01.cellId
            navDown: cell21.cellId
            navLeft: cell10.cellId
            navRight: cell12.cellId
        }

        Cell {
            id: cell12
            text: "(1, 2)"
            navUp: cell02.cellId
            navDown: cell22.cellId
            navLeft: cell11.cellId
            navRight: cell13.cellId
        }

        Cell {
            id: cell13
            text: "(1, 3)"
            navUp: cell03.cellId
            navDown: cell23.cellId
            navLeft: cell12.cellId
            navRight: cell14.cellId
        }

        Cell {
            id: cell14
            text: "(1, 4)"
            navUp: cell04.cellId
            navDown: cell24.cellId
            navLeft: cell13.cellId
            navRight: cell10.cellId
        }

        Cell {
            id: cell20
            text: "(2, 0)"
            navUp: cell10.cellId
            navDown: cell30.cellId
            navLeft: cell24.cellId
            navRight: cell21.cellId
        }

        Cell {
            id: cell21
            text: "(2, 1)"
            navUp: cell11.cellId
            navDown: cell31.cellId
            navLeft: cell20.cellId
            navRight: cell22.cellId
        }

        Cell {
            id: cell22
            text: "(2, 2)"
            navUp: cell12.cellId
            navDown: cell32.cellId
            navLeft: cell21.cellId
            navRight: cell23.cellId
        }

        Cell {
            id: cell23
            text: "(2, 3)"
            navUp: cell13.cellId
            navDown: cell33.cellId
            navLeft: cell22.cellId
            navRight: cell24.cellId
        }

        Cell {
            id: cell24
            text: "(2, 4)"
            navUp: cell14.cellId
            navDown: cell34.cellId
            navLeft: cell23.cellId
            navRight: cell20.cellId
        }

        Cell {
            id: cell30
            text: "(3, 0)"
            navUp: cell20.cellId
            navDown: cell40.cellId
            navLeft: cell34.cellId
            navRight: cell31.cellId
        }

        Cell {
            id: cell31
            text: "(3, 1)"
            navUp: cell21.cellId
            navDown: cell41.cellId
            navLeft: cell30.cellId
            navRight: cell32.cellId
        }

        Cell {
            id: cell32
            text: "(3, 2)"
            navUp: cell22.cellId
            navDown: cell42.cellId
            navLeft: cell31.cellId
            navRight: cell33.cellId
        }

        Cell {
            id: cell33
            text: "(3, 3)"
            navUp: cell23.cellId
            navDown: cell43.cellId
            navLeft: cell32.cellId
            navRight: cell34.cellId
        }

        Cell {
            id: cell34
            text: "(3, 4)"
            navUp: cell24.cellId
            navDown: cell44.cellId
            navLeft: cell33.cellId
            navRight: cell30.cellId
        }

        Cell {
            id: cell40
            text: "(4, 0)"
            navUp: cell30.cellId
            navDown: cell00.cellId
            navLeft: cell44.cellId
            navRight: cell41.cellId
        }

        Cell {
            id: cell41
            text: "(4, 1)"
            navUp: cell31.cellId
            navDown: cell01.cellId
            navLeft: cell40.cellId
            navRight: cell42.cellId
        }

        Cell {
            id: cell42
            text: "(4, 2)"
            navUp: cell32.cellId
            navDown: cell02.cellId
            navLeft: cell41.cellId
            navRight: cell43.cellId
        }

        Cell {
            id: cell43
            text: "(4, 3)"
            navUp: cell33.cellId
            navDown: cell03.cellId
            navLeft: cell42.cellId
            navRight: cell44.cellId
        }

        Cell {
            id: cell44
            text: "(4, 4)"
            navUp: cell34.cellId
            navDown: cell04.cellId
            navLeft: cell43.cellId
            navRight: cell40.cellId
        }
    }
}
