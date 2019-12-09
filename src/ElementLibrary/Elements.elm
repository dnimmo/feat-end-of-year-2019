module ElementLibrary.Elements exposing (globalLayout, heading1, heading2, mainContent)

import Element exposing (Element, el, layout, row, text)
import ElementLibrary.Styles as Styles
import Html exposing (Html)


globalLayout : Element msg -> Html msg
globalLayout =
    layout Styles.global


heading1 : String -> Element msg
heading1 str =
    el Styles.heading1 <| text str


heading2 : String -> Element msg
heading2 str =
    el Styles.heading2 <| text str


mainContent =
    row Styles.mainContent
