json.extract! user, :id, :username, :last_name, :first_name, :birthdate, :avatar_id, :cin, :created_at, :updated_at
json.url user_url(user, format: :json)
