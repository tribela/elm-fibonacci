module View exposing (view)

import Array
import Html exposing (..)
import Html.Events exposing (onClick)

import Model exposing (Model)
import Msg exposing (..)


view : Model -> Html Msg
view model =
    div [] 
        [ button [ onClick Generate ] [ text "Generate" ]
        , renderModel model
        ]

renderModel : Model -> Html Msg
renderModel model =
    model
        |> Array.toList
        |> List.map (\l -> li [] [ text (toString l) ])
        |> ul []
