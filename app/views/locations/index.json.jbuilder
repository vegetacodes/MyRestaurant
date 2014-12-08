json.array!(@locations) do |location|
  json.extract! location, :id, :restaurant_id, :street, :zip, :city, :state
  json.url location_url(location, format: :json)
end
