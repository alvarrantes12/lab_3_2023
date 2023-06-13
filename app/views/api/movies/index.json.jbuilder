json.array! @movies do |movie|
    json.id movie.id
    json.name movie.name
    json.year_release_date movie.year_release_date
    json.director do
      json.id movie.director.id
      json.first_name movie.director.first_name
      json.last_name movie.director.last_name
    end
  end
  