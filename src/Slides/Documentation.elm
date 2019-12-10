module Slides.Documentation exposing (heading, view)

import Element exposing (Element)
import ElementLibrary.Elements exposing (paragraph)


heading : String
heading =
    "The FEATing of the 5,000"


view : List (Element msg)
view =
    [ paragraph "FEAT's followers were tired, and hungry for knowledge. But FEAT had limited resources with which to feed them. Yet, whenever anyone fed from the documentation that FEAT had stored in Confluence, they found that it never ran out! The people of PET were able to feed until their brains were full and satisfied. With this newfound knowledge, PET would be able to carry on FEAT's work of healing applications."
    ]
