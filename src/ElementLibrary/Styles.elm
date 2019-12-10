module ElementLibrary.Styles exposing (button, buttonLabel, disabledButton, droppedCapital, global, heading1, heading2, mainContent, siteHeading)

import Element exposing (alignLeft, alignTop, alpha, centerX, centerY, fill, minimum, padding, px, rgb255, rgba255, spacing, width)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font


primaryColour =
    rgb255 137 49 104


secondaryColour =
    rgb255 74 25 66


tertiaryColour =
    rgb255 46 28 43


quarternaryColour =
    rgb255 234 234 234


siteHeading =
    [ Background.color primaryColour
    , Font.color quarternaryColour
    , Font.glow tertiaryColour 1
    , width fill
    , Border.shadow
        { offset = ( 0, 0 )
        , size = 1.0
        , blur = 3.0
        , color = quarternaryColour
        }
    ]


heading1Size =
    30


heading2Size =
    heading1Size - 10


global =
    [ Font.color <| quarternaryColour
    , Font.glow tertiaryColour 1
    , Font.family
        [ Font.external
            { url = "https://fonts.googleapis.com/css?family=Slabo+27px&display=swap"
            , name = "Slabo 27px"
            }
        ]
    , Background.gradient
        { angle = 67
        , steps = [ primaryColour, secondaryColour, tertiaryColour ]
        }
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
    , Background.color tertiaryColour
    , padding 20
    , Border.rounded 50
    , width <| px 65
    , Border.solid
    , Border.color <| quarternaryColour
    , Border.width 2
    ]


disabledButton =
    alpha 0.5 :: button


buttonLabel =
    [ centerX
    , Font.color quarternaryColour
    , Font.bold
    ]


droppedCapital =
    [ alignLeft
    , padding 10
    , Font.size 80
    , Font.family [ Font.typeface "Times New Roman" ]
    , Font.bold
    , Font.color primaryColour
    , Font.glow quarternaryColour 1
    ]
