json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :phone, :deliver, :rating, :timings, :category
  json.url restaurant_url(restaurant, format: :json)
end
