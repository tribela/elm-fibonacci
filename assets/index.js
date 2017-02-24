'use strict';

var Elm = require('./Main.elm');
var mountNode = document.querySelector('#app');

var app = Elm.Main.embed(mountNode);
