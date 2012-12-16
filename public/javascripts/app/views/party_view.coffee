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

class PartyView extends Backbone.View
  className: 'app-view'

  events:
    'submit form': 'addKid'

  constructor: ({kids}) ->
    @kids = new Backbone.Collection kids
    super()

  initialize: ->
    @listenTo @kids, 'all', @render

  render: ->
    @$el.html template({@kids})
    @focusInput()
    @

  focusInput: ->
    @$('form input').focus()

  addKid: (e) ->
    e.preventDefault()
    @kids.push new app.Kid name: name unless _(name = @$('form input').val()).isEmpty()

window.app ?= {}
window.app.PartyView = PartyView
