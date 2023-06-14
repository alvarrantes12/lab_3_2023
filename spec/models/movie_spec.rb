require 'rails_helper'

RSpec.describe Movie, type: :model do
  subject {
    described_class.new(name: "La Bella y la Bestia",
                        year_of_publication: 2023,
                        director: Director.create(first_name: "Alberto", last_name: "Álvarez"))
  }

  it "valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a year_of_publication" do
    subject.year_of_publication = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a year_of_publication exceeding 4 digits" do
    subject.year_of_publication = 12345
    expect(subject).to_not be_valid
  end

  it "is not valid with a year_of_publication exceeding 4 digits" do
    subject.year_of_publication = 12345
    expect(subject).to_not be_valid
  end
  
  it "is not valid with a year_of_publication greater than 2023" do
    subject.year_of_publication = 2024
    expect(subject).to_not be_valid
  end

  it "is not valid without a director" do
    subject.director = nil
    expect(subject).to_not be_valid
  end

end
