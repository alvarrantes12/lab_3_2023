require 'rails_helper'

RSpec.describe Movie, type: :model do
  let(:director) { Director.create(first_name: 'John', last_name: 'Doe') }

  it 'is valid with valid attributes' do
    movie = Movie.new(name: 'Example Movie', year: 2021, director: director)
    expect(movie).to be_valid
  end

  it 'is invalid without a name' do
    movie = Movie.new(year: 2021, director: director)
    expect(movie).to_not be_valid
  end

  it 'is invalid without a year' do
    movie = Movie.new(name: 'Example Movie', director: director)
    expect(movie).to_not be_valid
  end

  it 'is invalid with a year exceeding 2023' do
    movie = Movie.new(name: 'Example Movie', year: 2024, director: director)
    expect(movie).to_not be_valid
  end
end
