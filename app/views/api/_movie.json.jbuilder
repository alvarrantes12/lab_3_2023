json.extract! movie, :id, :movie_name, :movie_year, :created_at, :updated_at
json.url movie_url(movie, format: :json)
