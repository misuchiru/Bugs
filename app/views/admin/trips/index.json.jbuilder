json.array!(@trips) do |event|
  json.extract! event, :id, :title
  json.start event.start_day
  json.end event.end_day
end