json.movie do
    json.id @movie.id
    json.name @movie.name
    json.year_release_date @movie.year_release_date
    json.director do
        json.first_name @movie.director.first_name
        json.last_name @movie.director.last_name
    end
end