Director.create!(first_name: "Director", last_name: "Direc1")
Director.create!(first_name: "Director2", last_name: "Direc2")

Movie.create!(name: "Movie 1", year_publication: 2020, director_id: 1)
Movie.create!(name: "Movie 2", year_publication: 2022, director_id: 2)
