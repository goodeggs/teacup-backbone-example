#= require vendor/jquery.min
#= require vendor/underscore
#= require vendor/backbone
#= require vendor/teacup

#= require app/views/app_view
#= require app/models/kid

{Kid, AppView} = window.app

$ ->
  kids = (new Kid(name: name) for name in [ 'Noah', 'Henry Hugo', 'Hazel', 'Mia', 'Kira' ])
  $('#app').html new AppView({kids}).render()