json.array!(@workouts) do |workout|
  json.extract! workout, :id, :description, :workout_date, :completed, :User_id
  json.url workout_url(workout, format: :json)
end
