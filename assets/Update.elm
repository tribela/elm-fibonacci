module Update exposing (update)

import Model exposing (Model)
import Msg exposing (..)

import Array


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        Generate ->
            (calcNext model, Cmd.none)


calcNext : Array.Array Int -> Array.Array Int
calcNext arr =
    let
        a = getLast 2 arr
        b = getLast 1 arr
    in
        case (a, b) of
            (Just a, Just b) ->
                Array.push (a + b) arr
            (_, _) ->
                arr

getLast : Int -> Array.Array a -> Maybe a
getLast index arr =
    Array.get (Array.length arr - index) arr
