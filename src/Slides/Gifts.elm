module Slides.Gifts exposing (heading, view)

import Element exposing (Element)
import ElementLibrary.Elements exposing (paragraph)


heading : String
heading =
    "PET gives gifts"


view : List (Element msg)
view =
    [ paragraph "Members of PET wanted to see the baby. When they first arrived they were filled with joy at seeing the documentation in Confluence, alongside an actual onboarding process. \n        TNT brought the gift of deployment pipelines, King Robin brought the gift of Cloudfront, and IntOps brought the gift of Concierge knowledge." ]
