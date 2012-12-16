express = require 'express'
http = require 'http'
path = require 'path'
connectAssets = require './lib/teacup_connect-assets'

app = express()

app.configure ->

  app.set 'port', process.env.PORT || 3000
  app.set 'views', __dirname + '/views'
  app.set 'view engine', 'coffee'
  app.engine "coffee", require('teacup/lib/express').renderFile
  app.use express.favicon()
  app.use express.logger 'dev'
  app.use connectAssets(src: 'public', jsDir: 'javascripts', cssDir: 'stylesheets')
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use app.router
  app.use express.static(path.join(__dirname, 'public'))


app.configure 'development', ->
  app.use express.errorHandler()

app.get '/', (req, res) -> res.render 'index'
app.get '/test', (req, res) -> res.render 'test'


http.createServer(app).listen app.get('port'), ->
  console.log "Express server listening on port " + app.get('port')
