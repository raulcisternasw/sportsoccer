json.extract! user, :id, :name, :email, :telephone, :cellphone, :created_at, :updated_at
json.url user_url(user, format: :json)
