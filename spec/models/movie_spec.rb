require 'rails_helper'

RSpec.describe Movie, type: :model do
  subject {
    described_class.new(name: 'Movie1',
                        year: 2021,
                        director: Director.create(first_name: 'Director1',
                                                  last_name: 'Director1'))
  }

  it "valid with valid attributes" do
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

  it "is not valid with a year out of range" do
    subject.year = 2050
    expect(subject).to_not be_valid
  end

end