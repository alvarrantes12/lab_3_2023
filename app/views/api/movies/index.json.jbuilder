json.array! @movies do |movie|
    json.id movie.id
    json.name movie.name
    json.year_of_publication movie.year_of_publication
    json.director_name movie.director.first_name
end