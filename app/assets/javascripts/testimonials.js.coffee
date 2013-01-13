# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$ ()->
  $("form.new_testimonial").on "ajax:success", (event, data, status, xhr) ->
    $('#new-testimonial-modal').modal('hide')
    $('table tbody').append('<tr><td>' + data.name + '</td><td>' + data.email + + '</td><td>' + data.message + '</td></tr>')
