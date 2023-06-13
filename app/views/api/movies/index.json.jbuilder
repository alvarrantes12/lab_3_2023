json.array! @movies do |movie|
  json.id movie.id
  json.movie_name movie.movie_name
  json.movie_year movie.movie_year
  json.director do
    json.first_name movie.director.first_name
    json.last_name movie.director.last_name
  end
end
