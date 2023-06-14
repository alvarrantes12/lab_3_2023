# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
directors = Director.create([{first_name: "Fabricio", last_name: "Vega"}, {first_name: "Isaac", last_name: "Villalobos"}, {first_name: "Jesús", last_name: "Rodríguez"}])
Movie.create(name: "Flash", year_of_publication: 2022, director: directors.first)