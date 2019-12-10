module Slides.Introduction exposing (heading, view)

import Element exposing (Element)
import ElementLibrary.Elements exposing (image, paragraph)


heading : String
heading =
    "Elm-mas: The FEAT of the Nativity of Our Team"


view : List (Element msg)
view =
    [ paragraph "About two years ago, in the city of Birmingham, there lived a software engineer named Charlotte. She worked in a department called PET alongside a software engineer named Nimmo. One day an angel appeared before them and told them that they had been chosen to have a special baby. The baby would be Click's son and they must call him FEAT."
    ]



-- image
--         { description = "FEAT's feet - Nimmo's in a shoe and Charlotte's in a sock with a panda face on it"
--         , src = "Images/FEAT.jpg"
--         }
--     ,
