# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  t = 0
  $.getJSON 'trip_events/try.json', (json) ->
    t = json
    $('#calendar1').fullCalendar
      events: 'trip_events.json'
      defaultView: 'agendaWeek'
      eventColor: 'green'
      defaultDate: t.defaultDate
      header:
        left: 'prev,today,next'
        center: 'title'
        right: 'agendaDay,agendaWeek,month'
      views: agendaWeek:
        type: 'agenda'
        duration: days: t.days
    return
  return
