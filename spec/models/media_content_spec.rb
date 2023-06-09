require 'rails_helper'

RSpec.describe MediaContent, type: :model do
  subject {
    described_class.new(name: "Movie",
                        date: 2024,
                        director: Director.create(first_name: "Jonh", last_name: "Black"))
    }

    it "validate isnt empty" do
      expect(subject).to be_valid
    end
  
    it "it validates isnt valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  
    it "it validates isnt valid without date" do
      subject.date = nil
      expect(subject).to_not be_valid
    end
    it "it validates isnt valid without director" do
      subject.director = nil
      expect(subject).to_not be_valid
    end
  
end
