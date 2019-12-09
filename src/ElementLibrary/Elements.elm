module ElementLibrary.Elements exposing (button, disabledButton, globalLayout, heading1, heading2, mainContent, paragraph, siteHeading)

import Element exposing (Element, el, layout, row, text)
import Element.Input as Input
import ElementLibrary.Styles as Styles
import Html exposing (Html)


globalLayout : Element msg -> Html msg
globalLayout =
    layout Styles.global


siteHeading : String -> Element msg
siteHeading str =
    el
        Styles.siteHeading
    <|
        heading1 str


heading1 : String -> Element msg
heading1 str =
    el Styles.heading1 <| text str


heading2 : String -> Element msg
heading2 str =
    el Styles.heading2 <| text str


mainContent =
    row Styles.mainContent


button : String -> Maybe msg -> Element msg
button labelText maybeMsg =
    Input.button Styles.button
        { onPress = maybeMsg
        , label = el Styles.buttonLabel <| text labelText
        }


disabledButton : String -> Element msg
disabledButton str =
    Input.button Styles.disabledButton
        { onPress = Nothing
        , label = el Styles.buttonLabel <| text str
        }


paragraph : String -> Element msg
paragraph str =
    Element.paragraph []
        [ el
            Styles.droppedCapital
          <|
            text <|
                String.left 1 str
        , text <| String.dropLeft 1 str
        ]
