director1 = Director.find_by(first_name: "Makoto", last_name: "Shinkai")
director2 = Director.find_by(first_name: "Spike", last_name: "Jonze")
director3 = Director.find_by(first_name: "Miguel", last_name: "Lamata")
director4 = Director.find_by(first_name: "Naoko", last_name: "Yamada")
director5 = Director.find_by(first_name: "Thea", last_name: "Sharrock")
director6 = Director.find_by(first_name: "Kôtarô", last_name: "Tamura")
director7 = Director.find_by(first_name: "Nick", last_name: "Cassavetes")


if director1.nil?
    director1 = Director.create(first_name: "Makoto", last_name: "Shinkai")
end
if director2.nil?
    director2 = Director.create(first_name: "Spike", last_name: "Jonze")
end
if director3.nil?
    director3 = Director.create(first_name: "Miguel", last_name: "Lamata")
end
if director4.nil?
    director4 = Director.create(first_name: "Naoko", last_name: "Yamada")
end
if director5.nil?
    director5 = Director.create(first_name: "Thea", last_name: "Sharrock")
end
if director6.nil?
    director6 = Director.create(first_name: "Kôtarô", last_name: "Tamura")
end
if director7.nil?
    director7 = Director.create(first_name: "Nick", last_name: "Cassavetes")
end


Movie.create(name: "Your name", year: 2016, director: director1)
Movie.create(name: "Her", year: 2013, director: director2)
Movie.create(name: "Nuestros amantes", year: 2016, director: director3)
Movie.create(name: "Una voz silenciosa", year: 2016, director: director4)
Movie.create(name: "Me Before You", year: 2016, director: director5)
Movie.create(name: "Joze to Tora to Sakanatachi", year: 2020, director: director6)
Movie.create(name: "The Notebook", year: 2004, director: director7)


