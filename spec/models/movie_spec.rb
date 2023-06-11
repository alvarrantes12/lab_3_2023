require 'rails_helper'

RSpec.describe Movie, type: :model do
  subject{
    described_class.new(name: "Jhon Wick", year: 2014, 
                        director: Director.create(first_name: 'Chad', last_name: 'Stahelski'))
    
  }

  it "valid with valid attributes " do 
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

  it "is not valid if is not numeric" do
    subject.year = "not a number"
    expect(subject).to_not be_valid
  end

  it "is not valid with a year with more than 4 numbers" do
    subject.year = 20000
    expect(subject).to_not be_valid
  end

  it "is not valid with a year out of range" do
    subject.year = 2024
    expect(subject).to_not be_valid
  end

end