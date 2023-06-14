json.array! @movies do |movie|
    json.id movie.id
    json.name movie.name
    json.year_publication movie.year_publication
    json.director_name ["#{movie.director.first_name} #{movie.director.last_name}"]
end
