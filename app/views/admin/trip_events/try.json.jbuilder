json.defaultDate @trip.start_day.strftime("%F")
json.days @trip.end_day.day-@trip.start_day.day+1