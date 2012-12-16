window.app ?= {}

{renderable, div, h1 } = teacup

class app.AppView extends Backbone.View
  className: 'app-view'

  template: renderable ({}) ->
    div ->
      h1 "Welcome to Teacup"

  render: ->
    @template()
