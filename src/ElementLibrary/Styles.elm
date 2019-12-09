module ElementLibrary.Styles exposing (button, buttonLabel, droppedCapital, global, heading1, heading2, mainContent)

import Element exposing (alignLeft, alignTop, centerX, centerY, fill, minimum, padding, px, rgb255, spacing, width)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font


heading1Size =
    30


heading2Size =
    heading1Size - 10


global =
    [ Background.color <| rgb255 63 81 92
    , Font.color <| rgb255 255 255 255
    ]


heading1 =
    [ Font.size heading1Size
    , centerX
    , padding 20
    ]


heading2 =
    [ Font.size heading2Size
    , padding 20
    ]


mainContent =
    [ centerX
    , alignTop
    ]


button =
    [ centerY
    , Background.color <| rgb255 0 174 255
    , padding 20
    , width <| px 150
    , Border.rounded 50
    , Border.solid
    , Border.color <| rgb255 255 255 255
    , Border.width 2
    ]


buttonLabel =
    [ centerX ]


droppedCapital =
    [ alignLeft
    , padding 20
    , Font.size 60
    , Font.family [ Font.typeface "Times New Roman" ]
    , Font.bold
    ]
