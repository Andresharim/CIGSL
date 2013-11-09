json.array!(@photos) do |photo|
  json.extract! photo, :path, :land_id, :description
  json.url photo_url(photo, format: :json)
end
