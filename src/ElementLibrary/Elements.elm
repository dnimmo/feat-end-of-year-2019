module ElementLibrary.Elements exposing (button, disabledButton, globalLayout, heading1, heading2, image, list, mainContent, paragraph, siteHeading)

import Element exposing (Element, column, el, layout, row, text)
import Element.Input as Input
import ElementLibrary.Styles as Styles
import Html exposing (Html)


image :
    { description : String
    , src : String
    }
    -> Element msg
image info =
    Element.image Styles.image info


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


mainContent : List (Element msg) -> Element msg
mainContent =
    row Styles.mainContent


button : String -> Maybe msg -> Element msg
button labelText maybeMsg =
    Input.button
        (case maybeMsg of
            Just _ ->
                Styles.button

            Nothing ->
                Styles.disabledButton
        )
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
    Element.paragraph Styles.paragraph
        [ el
            Styles.droppedCapital
          <|
            text <|
                String.left 1 str
        , text <| String.dropLeft 1 str
        ]


list : List String -> Element msg
list strings =
    column Styles.list
        (strings
            |> List.indexedMap
                (\i x ->
                    el Styles.listItem <| text <| String.fromInt (i + 1) ++ ". " ++ x
                )
        )
