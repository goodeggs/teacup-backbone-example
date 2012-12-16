window.app ?= {}

{renderable, div, h1, ul, li, p, form, input } = teacup

template = renderable ({kids}) ->
  div ->
    h1 "Welcome to our tea party"
    p "We have a few kids at the table..."
    ul ->
      kids.each (kid) ->
        li kid.get 'name'
    form ->
      input placeholder: 'Add another'

class app.PartyView extends Backbone.View
  className: 'app-view'

  events:
    'submit form': 'addKid'

  constructor: ({kids}) ->
    @kids = new Backbone.Collection kids

  initialize: ->
    @kids.on 'change', @$el.html @render

  render: ->
    template({@kids})

  addKid: (e) ->
    $(e).preventDefault()
    @kids.push new app.Kid name: name unless _(name = @$('form input').val()).isEmpty()
    console.log @kids.toJSON()
