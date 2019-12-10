module Main exposing (main)

import Browser exposing (sandbox)
import Element exposing (Element, alignBottom, alignTop, centerX, column, el, fill, height, padding, paddingXY, row, width)
import ElementLibrary.Elements exposing (button, disabledButton, globalLayout, mainContent, siteHeading)
import Html exposing (Html)
import Slides.Concierge as Concierge
import Slides.ConciergeProgress as ConciergeProgress
import Slides.Documentation as Documentation
import Slides.End as End
import Slides.FeatIsBorn as FeatIsBorn
import Slides.Gifts as Gifts
import Slides.Introduction as Introduction
import Slides.NewsSpreads as NewsSpreads
import Slides.NextYear as NextYear
import Slides.NoRoom as NoRoom
import Slides.TheJourney as TheJourney



-- MODEL


type Model
    = DisplayingSlide Slide


type Slide
    = Introduction
    | TheJourney
    | NoRoom
    | FeatIsBorn
    | NewsSpreads
    | Gifts
    | Concierge
    | ConciergeProgress
    | Documentation
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
                        TheJourney

                    TheJourney ->
                        NoRoom

                    NoRoom ->
                        FeatIsBorn

                    FeatIsBorn ->
                        NewsSpreads

                    NewsSpreads ->
                        Gifts

                    Gifts ->
                        Concierge

                    Concierge ->
                        ConciergeProgress

                    ConciergeProgress ->
                        Documentation

                    Documentation ->
                        NextYear

                    NextYear ->
                        End

                    End ->
                        End

            Backwards ->
                case slide of
                    Introduction ->
                        Introduction

                    TheJourney ->
                        Introduction

                    NoRoom ->
                        TheJourney

                    FeatIsBorn ->
                        NoRoom

                    NewsSpreads ->
                        FeatIsBorn

                    Gifts ->
                        NewsSpreads

                    Concierge ->
                        Gifts

                    ConciergeProgress ->
                        Concierge

                    Documentation ->
                        ConciergeProgress

                    NextYear ->
                        Documentation

                    End ->
                        NextYear



-- VIEW


chooseHeading : Slide -> String
chooseHeading slide =
    case slide of
        Introduction ->
            Introduction.heading

        TheJourney ->
            TheJourney.heading

        NoRoom ->
            NoRoom.heading

        FeatIsBorn ->
            FeatIsBorn.heading

        NewsSpreads ->
            NewsSpreads.heading

        Gifts ->
            Gifts.heading

        Concierge ->
            Concierge.heading

        ConciergeProgress ->
            ConciergeProgress.heading

        Documentation ->
            Documentation.heading

        NextYear ->
            NextYear.heading

        End ->
            End.heading


chooseSlide : Slide -> List (Element Msg)
chooseSlide slide =
    [ column [ width fill ] <|
        case slide of
            Introduction ->
                Introduction.view

            TheJourney ->
                TheJourney.view

            NoRoom ->
                NoRoom.view

            FeatIsBorn ->
                FeatIsBorn.view

            NewsSpreads ->
                NewsSpreads.view

            Gifts ->
                Gifts.view

            Concierge ->
                Concierge.view

            ConciergeProgress ->
                ConciergeProgress.view

            Documentation ->
                Documentation.view

            NextYear ->
                NextYear.view

            End ->
                End.view
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
