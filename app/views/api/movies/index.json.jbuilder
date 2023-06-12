json.array! @movies do |movie|
    json.movie_id movie.id
    json.movie_name movie.movie_name
    json.year movie.year
    json.director do
        json.first_name movie.director.first_name
        json.last_name movie.director.last_name
    end
end
