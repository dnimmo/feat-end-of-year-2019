module Slides.Concierge exposing (heading, view)

import Element exposing (Element)
import ElementLibrary.Elements exposing (paragraph)


heading : String
heading =
    "The healing of the paralysed application"


view : List (Element msg)
view =
    [ paragraph "An application named Concierge had a terrible disease called JavaScript, and had to suffer from things such as side effects, mutations, and runtime exceptions. When FEAT saw Concierge, they loved it. FEAT loves each one of Click's applications. They want to bless them, and do them good. FEAT forgave Concierge's sins, and set to work stripping it of its disease. Though it still suffers today, it is getting healthier with each passing week."
    ]
