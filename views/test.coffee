{renderable, raw, js, css, html, head, title, body, div, script} = require 'teacup'

module.exports = renderable ({}) ->
  html ->
    head ->
      title 'Tests'
      css 'vendor/mocha.css'
    body ->
      div '#mocha'
      js 'vendor/mocha'
      js 'vendor/expect'
      script '''
        mocha.setup('bdd')
      '''
      js 'test/index'
      script '''
        mocha.run()
     '''