module ElementLibrary.Styles exposing (button, buttonLabel, disabledButton, droppedCapital, global, heading1, heading2, image, list, listItem, mainContent, paragraph, siteHeading)

import Element exposing (Attribute, Color, alignLeft, alpha, centerX, centerY, fill, height, maximum, mouseOver, padding, paddingXY, px, rgb255, spacing, width)
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
    , Font.family
        [ Font.external
            { url = "https://fonts.googleapis.com/css?family=Cinzel+Decorative&display=swap"
            , name = "Cinzel Decorative"
            }
        ]
    ]


heading1Size : Int
heading1Size =
    60


heading2Size : Int
heading2Size =
    heading1Size - 10


global : List (Attribute msg)
global =
    [ Font.color <| quarternaryColour
    , Font.glow tertiaryColour 1
    , Font.family
        [ Font.external
            { url = "https://fonts.googleapis.com/css?family=Cinzel+Decorative|Philosopher&display=swap"
            , name = "Philosopher"
            }
        ]
    , Background.gradient
        { angle = 67
        , steps = [ primaryColour, secondaryColour, tertiaryColour ]
        }
    ]


paragraph : List (Attribute msg)
paragraph =
    [ Font.size 50 ]


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
    , padding 40
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
    , paddingXY 10 0
    , Font.size 160
    , Font.bold
    , Font.color primaryColour
    , Font.glow quarternaryColour 1
    , Font.family
        [ Font.external
            { url = "https://fonts.googleapis.com/css?family=Cinzel+Decorative&display=swap"
            , name = "Cinzel Decorative"
            }
        ]
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


list : List (Attribute msg)
list =
    [ Font.size 40
    , spacing 20
    , padding 20
    ]


listItem : List (Attribute msg)
listItem =
    []
