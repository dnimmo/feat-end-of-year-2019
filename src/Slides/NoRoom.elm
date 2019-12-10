module Slides.NoRoom exposing (heading, view)

import Element exposing (Element)
import ElementLibrary.Elements exposing (paragraph)


heading : String
heading =
    "No room for the team"


view : List (Element msg)
view =
    [ paragraph "At last, Charlotte and Nimmo returned from Stratford. Back at Click Travel, PET was crowded with Transition projects. On each team, the story was the same: There was no time for improving front-end development. Undeterred, Charlotte and Nimmo worked out of hours to come up with a proposal for Click's front-end technology crisis." ]
