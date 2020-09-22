#!/usr/bin/env node
'use strict'

//const WebpackConfig = require('./webpack.config.server.base.js');
const {createBaseServerConfig} = require('../');

//console.log('createBaseServerConfig:', createBaseServerConfig);

let config = createBaseServerConfig({entry: __dirname + '/main.js', output: {path: __dirname, filename: 'bundle.js'}});
console.log('config:', config);

module.exports = config;


// vim:set tw=0:
