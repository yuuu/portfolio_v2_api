json.extract! app, :id, :title, :category, :description, :link, :key, :created_at, :updated_at
json.image Image.signed_url(app.key, :get_object)
json.url app_url(app, format: :json)
