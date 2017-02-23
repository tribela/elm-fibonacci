module Main exposing (..)

import Model exposing (Model)
import Msg exposing (..)
import Update exposing (update)
import View exposing (view)

import Array
import Html exposing (..)


-- MAIN

main =
    program
        { init = init
        , update = update
        , subscriptions = \_ -> Sub.none
        , view = view
        }


-- INIT

init : ( Model, Cmd Msg )
init =
    (Array.fromList [1, 1], Cmd.none)

