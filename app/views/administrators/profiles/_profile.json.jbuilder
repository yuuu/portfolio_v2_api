json.extract! profile, :id, :introduction, :residence, :birthplace, :birthday, :hobby, :created_at, :updated_at
json.url administrators_profile_url(profile, format: :json)
