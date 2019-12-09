module ElementLibrary.Styles exposing (global, heading1, heading2, mainContent)

import Element exposing (centerX, padding, rgb255)
import Element.Background as Background
import Element.Font as Font


heading1Size =
    30


heading2Size =
    heading1Size - 10


global =
    [ Background.color <| rgb255 0 174 255
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
    [ padding 50
    , centerX
    ]
