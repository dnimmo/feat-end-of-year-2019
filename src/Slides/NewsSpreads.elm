module Slides.NewsSpreads exposing (heading, view)

import Element exposing (Element)
import ElementLibrary.Elements exposing (paragraph)


heading : String
heading =
    "PET hears the news"


view : List (Element msg)
view =
    [ paragraph "At the same time, in a department overlooking Click's software, some engineers were watching over Slack. A giant pair of heart-hands appeared on their screens. They were very afraid. It was an angel sent by Click. The angel told them not to be afraid, because he had some good news. He said that the future of Click's front-end development had been born, and they would find it in FEAT." ]
