json.array!(@author_profiles) do |author_profile|
  json.extract! author_profile, :id, :birthplace, :bio, :awards
  json.url author_profile_url(author_profile, format: :json)
end
