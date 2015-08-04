json.array!(@experiences) do |experience|
  json.extract! experience, :title, :content, :published, :published_at
  json.url experience_url(experience, format: :json)
end