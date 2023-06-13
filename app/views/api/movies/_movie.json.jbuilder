json.extract! movie, :id, :name, :year_release_date, :created_at, :updated_at
json.url movie_url(movie, format: :json)