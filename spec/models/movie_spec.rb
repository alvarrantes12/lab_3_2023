require 'rails_helper'

RSpec.describe Movie, type: :model do
  subject {
    described_class.new(name: "Transformers",
                        year: 2023,
                        director: Director.create(first_name: "Ken", last_name: "Nolan")
                       )
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

  it "is not valid if is not numeric" do
    subject.year = "not a number"
    expect(subject).to_not be_valid
  end

  it "is not valid with a year more than 2023" do
    subject.year = 2025
    expect(subject).to_not be_valid
  end

  it "is not valid with a year with more than 4 numbers" do
    subject.year = 20233
    expect(subject).to_not be_valid
  end
end