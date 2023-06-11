require 'rails_helper'

RSpec.describe Movie, type: :model do
  subject {
    described_class.new(name: "Movie1",year: 2020,
                        director: Director.create(first_name:"John", last_name: "Black"))
  }

  it "valid with valid attributes" do
      expect(subject).to be_valid
  end

  it "is not valid without name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end  

  it "is not valid with a year with more than 4 numers" do
    subject.year = 20222
    expect(subject).to_not be_valid
  end   

  it "is not valid with a year with more than 2023" do
    subject.year = 2024
    expect(subject).to_not be_valid
  end   
end
