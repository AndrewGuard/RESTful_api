json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :name, :extension
  json.url restaurant_url(restaurant, format: :json)
end