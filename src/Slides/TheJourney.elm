module Slides.TheJourney exposing (heading, view)

import Element exposing (Element)
import ElementLibrary.Elements exposing (paragraph)


heading : String
heading =
    "The start of the journey"


view : List (Element msg)
view =
    [ paragraph "Soon after the angel's visit, Charlotte and Nimmo were researching options for better front-end development, when they were told they had to go on a long journey to Stratford Upon Avon. This was because they had to work on a special project named Itinerary. They had to drink Corona for a few days, whilst repeatedly losing games of cards to the wise men Robin and Craig." ]
