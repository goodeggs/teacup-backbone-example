#= require vendor/jquery.min
#= require vendor/underscore
#= require vendor/backbone
#= require vendor/teacup

#= require app/views/party_view
#= require app/models/kid

{Kid, PartyView} = window.app

$ ->
  kids = (new Kid(name: name) for name in [ 'Noah', 'Mary Kate', 'Henry Hugo', 'Hazel', 'Mia', 'Kira' ])
  $('#app').html new PartyView({kids}).render()