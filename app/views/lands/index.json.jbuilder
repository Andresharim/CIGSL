json.array!(@lands) do |land|
  json.extract! land, :location, :title_deed, :climatic_condition, :soil_type, :user_id, :map, :size, :description
  json.url land_url(land, format: :json)
end
