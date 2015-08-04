json.array!(@admin_event_types) do |admin_event_type|
  json.extract! admin_event_type, :id, :name
  json.url admin_event_type_url(admin_event_type, format: :json)
end
