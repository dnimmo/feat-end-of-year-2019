module Main exposing (main)

import Browser exposing (sandbox)
import Element exposing (Element, alignBottom, alignTop, centerX, column, el, fill, height, padding, paddingXY, row, width)
import ElementLibrary.Elements exposing (button, disabledButton, globalLayout, mainContent, siteHeading)
import Html exposing (Html)
import Slides.End as End
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


chooseHeading : Slide -> String
chooseHeading slide =
    case slide of
        Introduction ->
            Introduction.heading

        WhyWeExist ->
            WhyWeExist.heading

        End ->
            End.heading

        _ ->
            Introduction.heading


chooseSlide : Slide -> List (Element Msg)
chooseSlide slide =
    [ column [ width fill ] <|
        case slide of
            Introduction ->
                Introduction.view

            WhyWeExist ->
                WhyWeExist.view

            End ->
                End.view

            _ ->
                Introduction.view
    ]


view : Model -> Html Msg
view (DisplayingSlide slide) =
    globalLayout <|
        column
            [ width fill
            , height fill
            ]
            [ siteHeading <|
                chooseHeading slide
            , row
                [ centerX
                , height fill
                , width fill
                , paddingXY 400 40
                ]
                [ column [ width fill, centerX, alignTop ]
                    [ mainContent <| chooseSlide slide
                    ]
                ]
            , row
                [ width fill
                , height fill
                ]
                [ el
                    [ centerX
                    , alignBottom
                    , padding 30
                    ]
                  <|
                    case slide of
                        Introduction ->
                            disabledButton "<"

                        _ ->
                            button "<" <| Just <| ChangeSlide Backwards
                , el
                    [ centerX
                    , alignBottom
                    , padding 30
                    ]
                  <|
                    case slide of
                        End ->
                            disabledButton ">"

                        _ ->
                            button ">" <| Just <| ChangeSlide Forwards
                ]
            ]


main : Program () Model Msg
main =
    sandbox
        { init = DisplayingSlide Introduction
        , view = view
        , update = update
        }
