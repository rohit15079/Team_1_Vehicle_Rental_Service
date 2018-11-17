json.extract! booking, :id, :vehicle_id, :start_date, :end_date, :customer_name, :customer_contact, :created_at, :updated_at
json.url booking_url(booking, format: :json)
