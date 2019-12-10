module Slides.Introduction exposing (heading, view)

import Element exposing (Element)
import ElementLibrary.Elements exposing (paragraph)


heading : String
heading =
    "The NatiFEATy"


view : List (Element msg)
view =
    [ paragraph "About two years ago, in the city of Birmingham, there lived a software engineer named Charlotte. She worked in a department called PET alongside a software engineer named Nimmo. One day an angel appeared before them and told them that they had been chosen to have a special baby. The baby would be Click's son and they must call him FEAT."
    ]
