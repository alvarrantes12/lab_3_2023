require 'rails_helper'

RSpec.describe Movie, type: :model do
  subject {
    described_class.new(movie_name: "La sirenita",
                        movie_year: "2023",
                        director: Director.create(first_name: "Allan", last_name: "Castro"))
  }

  it "valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without movie_name" do
    subject.movie_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without movie_year" do
    subject.movie_year = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a movie_year with more then 4 numbers" do
    subject.movie_year = "12345"
    expect(subject).to_not be_valid
  end

  it "is not valid without director" do
    subject.director = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a movie_year out of range" do
    subject.movie_year = 2024
    expect(subject).to_not be_valid
  end

end