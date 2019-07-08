json.extract! beer, :id, :name, :brand, :style, :qualification, :created_at, :updated_at
json.url beer_url(beer, format: :json)
