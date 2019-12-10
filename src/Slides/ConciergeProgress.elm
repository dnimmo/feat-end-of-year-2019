module Slides.ConciergeProgress exposing (heading, view)

import Element exposing (Element)
import ElementLibrary.Elements exposing (list, paragraph)


heading : String
heading =
    "The healing of the paralysed application, continued"


view : List (Element msg)
view =
    [ paragraph "So far Concierge has been relieved of its JavaScript in the following areas: "
    , list [ "Search all bookings", "Booking search results", "Add manual flights", "Search additional services" ]
    ]
