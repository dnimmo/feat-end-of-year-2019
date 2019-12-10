module Slides.FeatIsBorn exposing (heading, view)

import Element exposing (Element)
import ElementLibrary.Elements exposing (paragraph)


heading : String
heading =
    "FEAT is born!"


view : List (Element msg)
view =
    [ paragraph "Eventually, PET came to the end of Transition. A short time later Charlotte and Nimmo went to speak to their Kings, and presented their proposal. And so it was, in a meeting room in Alpha Tower, that FEAT was born."
    ]
