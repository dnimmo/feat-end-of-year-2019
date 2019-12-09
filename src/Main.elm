module Main exposing (main)

import Browser exposing (sandbox)
import Element exposing (Element, alignTop, centerX, centerY, column, el, fill, height, maximum, padding, px, row, shrink, text, width)
import ElementLibrary.Elements exposing (button, globalLayout, heading1, mainContent)
import Html exposing (Html)
import Slides.Introduction as Introduction
import Slides.WhyWeExist as WhyWeExist



-- MODEL


type Model
    = DisplayingSlide Slide


type Slide
    = Introduction
    | WhyWeExist
    | FrontendDevelopment
    | Concierge
    | NextYear
    | End



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
            Forwards ->
                case slide of
                    Introduction ->
                        WhyWeExist

                    WhyWeExist ->
                        FrontendDevelopment

                    FrontendDevelopment ->
                        Concierge

                    Concierge ->
                        NextYear

                    NextYear ->
                        End

                    End ->
                        End

            Backwards ->
                case slide of
                    Introduction ->
                        Introduction

                    WhyWeExist ->
                        Introduction

                    FrontendDevelopment ->
                        WhyWeExist

                    Concierge ->
                        FrontendDevelopment

                    NextYear ->
                        Concierge

                    End ->
                        NextYear



-- VIEW


chooseSlide : Slide -> List (Element Msg)
chooseSlide slide =
    [ column [ width fill ] <|
        case slide of
            Introduction ->
                Introduction.view

            WhyWeExist ->
                WhyWeExist.view

            _ ->
                Introduction.view
    ]


view : Model -> Html Msg
view (DisplayingSlide slide) =
    globalLayout <|
        row [ centerX, height fill, width fill ]
            [ column [ width <| maximum 200 fill, padding 20 ] <|
                case slide of
                    Introduction ->
                        []

                    _ ->
                        [ button "Previous" <| Just <| ChangeSlide Backwards
                        ]
            , column [ width fill, centerX, alignTop ]
                [ heading1
                    "FEAT's [Insert Pun Here] 2019-2020"
                , mainContent <| chooseSlide slide
                ]
            , column [ width <| maximum 200 fill, padding 20 ] <|
                case slide of
                    End ->
                        []

                    _ ->
                        [ button "Next" <| Just <| ChangeSlide Forwards
                        ]
            ]


main : Program () Model Msg
main =
    sandbox
        { init = DisplayingSlide Introduction
        , view = view
        , update = update
        }
