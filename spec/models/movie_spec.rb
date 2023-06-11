require 'rails_helper'

RSpec.describe Movie, type: :model do
  let(:director) {
    Director.create(first_name: 'John', last_name: 'Doe')
  }

  subject {
    described_class.new(name: 'The Test Movie',
                        year: 2022,
                        director: director)
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a year" do
    subject.year = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a year in the future" do
    subject.year = 2030
    expect(subject).to_not be_valid
  end

  it "belongs to a director" do
    expect(subject.director).to eq(director)
  end

  it "has a valid string representation" do
    expect(subject.to_s).to eq("The Test Movie (2022)")
  end
end
