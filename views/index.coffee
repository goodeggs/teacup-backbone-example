{renderable, raw, js, html, head, title, body, div} = require 'teacup'

module.exports = renderable ({}) ->
  html ->
    head ->
      title 'Backbone Teacup'
      js 'app', pathOnly: true
    body ->
      div '#app', 'hi'
