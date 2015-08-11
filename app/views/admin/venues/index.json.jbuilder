json.array!(@admin_venues) do |admin_venue|
  json.extract! admin_venue, :id, :name, :address, :phone, :fax, :email, :city_locality, :postcode, :country, :remarks
  json.url admin_venue_url(admin_venue, format: :json)
end
