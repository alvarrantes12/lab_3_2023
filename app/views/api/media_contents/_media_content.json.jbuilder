json.extract! media_content, :id, :name, :year, :created_at, :updated_at
json.url media_content_url(media_content, format: :json)
