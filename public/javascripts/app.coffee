#= require vendor/jquery.min
#= require vendor/underscore
#= require vendor/backbone
#= require vendor/teacup
#= require app/views/app_view

$ ->
  $('#app').html new app.AppView().render()