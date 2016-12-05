json.extract! admin_newsletter, :id, :title, :priority, :created_at, :updated_at
json.url admin_newsletter_url(admin_newsletter, format: :json)