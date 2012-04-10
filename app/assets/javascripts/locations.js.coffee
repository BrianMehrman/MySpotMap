# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
window.lat = 0
window.long = 0

window.getMyLocation = ->
  foundLocation = (position) =>
    window.lat  = position.coords.latitude
    window.long = position.coords.longitude
    #msg = "You are at "+lat+", "+long+"."
    #alert(msg);

  noLocation = ->
    alert('Could not find location')
    
  navigator.geolocation.getCurrentPosition(foundLocation, noLocation)
