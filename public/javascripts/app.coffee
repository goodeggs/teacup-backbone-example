#= require app/index

{Kid, PartyView} = window.app

$ ->
  kids = (new Kid(name: name) for name in [ 'Noah', 'Mary Kate', 'Henry Hugo', 'Hazel', 'Mia', 'Kira' ])
  view = new PartyView({kids})
  view.render().$el.appendTo '#app'
  view.focusInput()
