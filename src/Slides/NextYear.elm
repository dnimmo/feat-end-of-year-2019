module Slides.NextYear exposing (heading, view)

import Element exposing (Element)
import ElementLibrary.Elements exposing (paragraph)


heading : String
heading =
    "The next FEATsteps"


view : List (Element msg)
view =
    [ paragraph "2019 has been an excellent year for FEAT, but we are looking forward to 2020, when the paralysed Concierge will be fully healed, and our attention can be turned towards another application that is suffering from overexposure to JavaScript: The Platform."
    ]
