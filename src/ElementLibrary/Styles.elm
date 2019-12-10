module ElementLibrary.Styles exposing (button, buttonLabel, disabledButton, droppedCapital, global, heading1, heading2, image, mainContent, siteHeading)

import Element exposing (Attribute, Color, alignLeft, alignTop, alpha, centerX, centerY, fill, height, maximum, mouseOver, padding, px, rgb255, width)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font


primaryColour : Color
primaryColour =
    rgb255 137 49 104


secondaryColour : Color
secondaryColour =
    rgb255 74 25 66


tertiaryColour : Color
tertiaryColour =
    rgb255 46 28 43


quarternaryColour : Color
quarternaryColour =
    rgb255 234 234 234


siteHeading : List (Attribute msg)
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


heading1Size : Int
heading1Size =
    30


heading2Size : Int
heading2Size =
    heading1Size - 10


global : List (Attribute msg)
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


heading1 : List (Attribute msg)
heading1 =
    [ Font.size heading1Size
    , centerX
    , padding 20
    ]


heading2 : List (Attribute msg)
heading2 =
    [ Font.size heading2Size
    , padding 20
    ]


mainContent : List (Attribute msg)
mainContent =
    [ centerX
    , alignTop
    ]


genericButton : List (Attribute msg)
genericButton =
    [ centerY
    , Background.color tertiaryColour
    , padding 20
    , Border.rounded 50
    , width <| px 65
    , Border.solid
    , Border.color quarternaryColour
    , Font.color quarternaryColour
    , Border.width 2
    ]


button : List (Attribute msg)
button =
    mouseOver
        [ Background.color quarternaryColour
        , Border.color tertiaryColour
        , Font.color tertiaryColour
        ]
        :: genericButton


disabledButton : List (Attribute msg)
disabledButton =
    alpha 0.5 :: genericButton


buttonLabel : List (Attribute msg)
buttonLabel =
    [ centerX
    , Font.bold
    ]


droppedCapital : List (Attribute msg)
droppedCapital =
    [ alignLeft
    , padding 10
    , Font.size 80
    , Font.family [ Font.typeface "Times New Roman" ]
    , Font.bold
    , Font.color primaryColour
    , Font.glow quarternaryColour 1
    ]


image : List (Attribute msg)
image =
    [ centerX
    , height (fill |> maximum 400)
    , Border.shadow
        { blur = 3
        , offset = ( -1, 4 )
        , size = 3
        , color = tertiaryColour
        }
    ]
