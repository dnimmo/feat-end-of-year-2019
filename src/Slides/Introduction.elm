module Slides.Introduction exposing (heading, view)

import Element exposing (Element, text)
import ElementLibrary.Elements exposing (image)


heading : String
heading =
    "In April 2019, a team was born"


view : List (Element msg)
view =
    [ image
        { description = "FEAT's feet - Nimmo's in a shoe and Charlotte's in a sock with a panda face on it"
        , src = "Images/FEAT.jpg"
        }
    , text ""
    ]
