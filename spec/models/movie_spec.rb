require 'rails_helper'

RSpec.describe Movie, type: :model do
  subject {
    described_class.new(name: "name_Movie",
                        year: 2022,
                        director: Director.create(first_name: "First_name_Director1", last_name: "Last_Name_Director1")
                       )
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

  it "is not valid with a non-numeric year" do
    subject.year = "two thousand twenty three"
    expect(subject).to_not be_valid
  end

  it "is not valid with a year greater than 2023" do
    subject.year = 2024
    expect(subject).to_not be_valid
  end
end