json.extract! profile, :id, :name, :driving_history_check_data, :police_check_data, :bio, :car, :avatar_data, :user_id, :license_data, :created_at, :updated_at
json.url profile_url(profile, format: :json)
