require 'rails_helper'

RSpec.describe Movie, type: :model do
    subject{
        described_class.new(movie_name: "Movie1",
            year: 2014,
            director: Director.create(first_name: "John", last_name: "Winston"))
    }

    it "valid with valid attributes" do
        expect(subject).to be_valid
    end

    it "is not valid without movie_name" do
        subject.movie_name = nil
        expect(subject).to_not be_valid
    end

    it "is not valid without year" do
        subject.year = nil
        expect(subject).to_not be_valid
    end
      
    it "is not valid with a non-integer year" do
        subject.year = "abcd"
        expect(subject).to_not be_valid
    end
    
    it "is not valid with a year format that does not match the expected format" do
        subject.year = "123"
        expect(subject).to_not be_valid
    end
    
    it "is not valid with a year outside the allowed range" do
        subject.year = 1894
        expect(subject).to_not be_valid
    end
    
    it "is not valid with a year overpassed the allowed range" do
        subject.year = 2024
        expect(subject).to_not be_valid
    end     
end
