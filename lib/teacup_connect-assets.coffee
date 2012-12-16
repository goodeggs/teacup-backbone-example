connectAssets = require 'connect-assets'
teacup = require 'teacup'

# Returns connect-assets middleware and binds teacup.js and teacup.css to connect-assets helpers
module.exports = (options) ->
  # Create helper context, pass it to connect-assets, and reset js & css roots
  options.helperContext = helperContext = {}
  connectMiddleware = connectAssets(options)
  helperContext.js.root = options.jsDir if options.jsDir?
  helperContext.css.root = options.cssDir if options.cssDir?

  # Bind js & css helpers to teacup
  {renderable, raw} = teacup
  teacup.js = renderable (path, options) ->
    raw helperContext.js(path, options)
  teacup.css = renderable (path, options) ->
    raw helperContext.css(path, options)

  connectMiddleware