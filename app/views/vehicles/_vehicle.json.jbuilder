json.extract! vehicle, :id, :category, :model, :manufacturer, :isAc, :cost, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
