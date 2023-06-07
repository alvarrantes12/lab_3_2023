json.extract! movie, :id, :first_name, :year, :created_at, :updated_at
json.url movie_url(movie, format: :json)
