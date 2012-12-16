window.app ?= {}

{renderable, div, h1, ul, li, p } = teacup

template = renderable ({kids}) ->
  div ->
    h1 "Welcome to our tea party"
    p "We have a few kids at the table..."
    ul ->
      for kid in kids
        li kid.get 'name'

class app.AppView extends Backbone.View
  className: 'app-view'

  constructor: ({@kids}) ->

  render: ->
    template({@kids})
