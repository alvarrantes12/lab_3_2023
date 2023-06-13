require 'rails_helper'

RSpec.describe Movie, type: :model do
  subject {
    described_class.new(name: "Movie",
                        year_release_date: 2023,
                        director: Director.create(first_name: "Joshue", last_name: "Mora")
                       )
  }

  it "valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a year" do
    subject.year_release_date = nil
    expect(subject).to_not be_valid
  end

  it "is not valid if is not numeric" do
    subject.year_release_date = "not a number"
    expect(subject).to_not be_valid
  end

  it "is not valid with a year greater 2023" do
    subject.year_release_date = 2024
    expect(subject).to_not be_valid
  end

  it "is not valid with a year with more than 4 numbers" do
    subject.year_release_date = 11111
    expect(subject).to_not be_valid
  end
end