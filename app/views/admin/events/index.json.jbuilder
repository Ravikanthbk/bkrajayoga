json.array!(@admin_events) do |admin_event|
  json.extract! admin_event, :id, :date_from, :date_to, :descript, :filename, :ticker, :admin_event_type_id
  json.url admin_event_url(admin_event, format: :json)
end
