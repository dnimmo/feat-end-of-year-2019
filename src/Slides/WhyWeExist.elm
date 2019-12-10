module Slides.WhyWeExist exposing (heading, view)

import Element exposing (Element)
import ElementLibrary.Elements exposing (paragraph)


heading : String
heading =
    "Why we exist"


view : List (Element msg)
view =
    [ paragraph "Why we exist" ]
