module Slides.End exposing (heading, view)

import Element exposing (Element)
import ElementLibrary.Elements exposing (image)


heading : String
heading =
    "Merry FEATmas!"


view : List (Element msg)
view =
    [ image
        { src = "Images/goldblumhands.gif"
        , description = "Jeff Goldblum, making a heart shape with his hands"
        }
    ]
