json.extract! profile, :id, :Name, :Driving_History_check_data, :Police_check_data, :bio, :Car, :avatar_data, :User_id, :license_data, :created_at, :updated_at
json.url profile_url(profile, format: :json)
