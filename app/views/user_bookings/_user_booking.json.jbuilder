json.extract! user_booking, :id, :created_at, :updated_at
json.url user_booking_url(user_booking, format: :json)
