Using Teacup with Backbone - an example app
===========================================

This app runs a node server with Express and connect-assets to serve a basic Backbone.js app that demonstrates
how to use [Teacup](http://goodeggs.github.com/teacup) in your Backbone apps.

[Express](http://expressjs.com) serves up the one HTML page and [connect-assets](https://github.com/TrevorBurnham/connect-assets) compiles and combines the JavaScript and CSS,
very similarly to Rails and it's asset pipeline. If you're already using Rails and Backbone, you should
be able to use Teacup exactly as demonstrated in this app.

Getting Started
---------------

### Prerequisites

You only need to have node installed. Everything else is installed as described below.

### Install

```
git clone git@github.com:goodeggs/teacup-backbone-example.gi
cd teacup-backbone-example
npm install
```

### Start the server

```
npm start
open http://locahost:3000
```

### Run the tests

With the server running...

```
npm test
```

### Reloading Changes

If you want to see changes to files without having to restart your server, start the app with node-dev:

```
npm install -g node-dev
node-dev server.coffee
```