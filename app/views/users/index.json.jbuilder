json.array!(@users) do |user|
  json.extract! user, :id, :emp_code, :name, :email, :mobile, :password
  json.url user_url(user, format: :json)
end
