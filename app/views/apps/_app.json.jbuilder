json.extract! app, :id, :title, :category, :description, :link, :key, :created_at, :updated_at
json.image Image.cdn_url(app.key)
json.url app_url(app, format: :json)
