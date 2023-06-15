json.extract! movie, :id, :title, :director_id, :release_date, :genre, :created_at, :updated_at
json.url movie_url(movie, format: :json)
