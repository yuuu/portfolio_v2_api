json.extract! skill, :id, :title, :key, :created_at, :updated_at
json.image Image.cdn_url(skill.key)
json.url skill_url(skill, format: :json)
