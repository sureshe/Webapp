json.array!(@testusers) do |testuser|
  json.extract! testuser, :id, :name, :email, :password
  json.url testuser_url(testuser, format: :json)
end
