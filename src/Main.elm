module Main exposing (main)

import Browser exposing (sandbox)
import Element exposing (Element, centerX, column, row, text)
import Element.Input as Input
import ElementLibrary.Elements exposing (globalLayout, heading1, mainContent)
import Html exposing (Html)
import Slides.Introduction as Introduction
import Slides.WhyWeExist as WhyWeExist



-- MODEL


type Model
    = DisplayingSlide Slide


type Slide
    = Introduction
    | WhyWeExist



-- UPDATE


type SlideDirection
    = Backwards
    | Forwards


type Msg
    = ChangeSlide SlideDirection


update : Msg -> Model -> Model
update (ChangeSlide direction) (DisplayingSlide slide) =
    DisplayingSlide <|
        case direction of
            Backwards ->
                case slide of
                    Introduction ->
                        Introduction

                    WhyWeExist ->
                        Introduction

            Forwards ->
                case slide of
                    Introduction ->
                        WhyWeExist

                    WhyWeExist ->
                        WhyWeExist



-- VIEW


chooseSlide : Slide -> List (Element Msg)
chooseSlide slide =
    case slide of
        Introduction ->
            Introduction.view

        WhyWeExist ->
            WhyWeExist.view


view : Model -> Html Msg
view (DisplayingSlide slide) =
    globalLayout <|
        row [ centerX ]
            [ Input.button []
                { onPress = Just <| ChangeSlide Backwards
                , label = text "Previous"
                }
            , column [ centerX ]
                [ heading1
                    "FEAT's [Insert Pun Here] 2019-2020"
                , mainContent <| chooseSlide slide
                ]
            , Input.button []
                { onPress = Just <| ChangeSlide Forwards
                , label = text "Next"
                }
            ]


main : Program () Model Msg
main =
    sandbox
        { init = DisplayingSlide Introduction
        , view = view
        , update = update
        }
