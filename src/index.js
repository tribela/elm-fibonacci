'use strict';

require('./index.html');

var Elm = require('./Main.elm');
var mountNode = document.querySelector('#app');

var app = Elm.Main.embed(mountNode);
