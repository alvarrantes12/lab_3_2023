require 'rails_helper'

RSpec.describe Movie, type: :model do
  subject {
    described_class.new(name: "Star Wars",
                        year: 2023,
                        director: Director.create(first_name: "Manuel", last_name: "Rodriguez"))
  }
  
  it "is valid with valid attributes" do
  expect(subject).to be_valid
  end  
  
  it "is not valid without name" do
  subject.name = nil
  expect(subject).to_not be_valid
  end
  
  it "is not valid without year" do
  subject.year = nil
  expect(subject).to_not be_valid
  end

  it "is not valid with a year is less than 0" do
    subject.year = "0"
    expect(subject).to_not be_valid
  end

  it "is not valid with a year is more than 2023" do
    subject.year = "2024"
    expect(subject).to_not be_valid
  end

end
