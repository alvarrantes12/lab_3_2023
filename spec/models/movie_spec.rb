require 'rails_helper'

RSpec.describe Movie, type: :model do
  subject {
    described_class.new(movie_name: "Star Wars",
                        movie_year: "1995",
                        director: Director.create(first_name: "George", last_name: "Lucas"))
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

  it "is not valid without director" do
    subject.director = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a movie_year out of range" do
    subject.movie_year = 2024
    expect(subject).to_not be_valid
  end

end
