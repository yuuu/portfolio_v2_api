json.extract! skill, :id, :title, :key, :created_at, :updated_at
json.image Image.signed_url(skill.key, :get_object)
json.url skill_url(skill, format: :json)
