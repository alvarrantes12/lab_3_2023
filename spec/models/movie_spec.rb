require 'rails_helper'

RSpec.describe Movie, type: :model do
  subject{
    described_class.new(name: "Movie",
                        year_publication: 2023,
                        director: Director.create(first_name: "Kevin", last_name: "Mora"))
  }

  it "valid with valid attributes" do 
    expect(subject).to be_valid
  end

  it "is not valid without name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without year_publication" do
    subject.year_publication = nil
    expect(subject).to_not be_valid
    end
  
    it "is not valid with a year_publication is more than 2023" do
      subject.year_publication = "2024"
      expect(subject).to_not be_valid
    end

end
