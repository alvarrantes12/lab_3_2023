json.movie do
  json.id @movie.id
  json.first_name @movie.first_name
  json.year @movie.year


  json.director do
    json.first_name @movie.director.first_name
    json.last_name @movie.director.last_name
  end
end

