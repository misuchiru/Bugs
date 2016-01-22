json.array!(@trip_events) do |event|
  json.extract! event, :id, :title
  json.start event.start_day
  json.end event.end_day
  json.color event.color
  json.url edit_admin_trip_trip_event_path(event.trip, event)
end