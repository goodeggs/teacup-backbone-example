{renderable, raw, js, html, head, title, body, div} = require 'teacup'

module.exports = renderable ({}) ->
  html ->
    head ->
      title 'Backbone Teacup'
      js 'app'
    body ->
      div '#app'
