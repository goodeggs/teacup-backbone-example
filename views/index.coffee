{renderable, raw, js, css, html, head, title, body, div} = require 'teacup'

module.exports = renderable ({}) ->
  html ->
    head ->
      title 'Backbone Teacup'
      js 'app/index'
      css 'app'
    body ->
      div '#app'
