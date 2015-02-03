json.array!(@m_users) do |m_user|
  json.extract! m_user, 
  json.url m_user_url(m_user, format: :json)
end