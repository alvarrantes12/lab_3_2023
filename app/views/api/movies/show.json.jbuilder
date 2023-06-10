json.movie do
  json.id @movie.id
  json.movie_name @movie.movie_name
  json.movie_year @movie.movie_year
  json.director do
    json.first_name @director.first_name
    json.last_name @director.last_name
  end
end
