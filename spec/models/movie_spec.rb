require 'rails_helper'

RSpec.describe Movie, type: :model do
  subject {
    described_class.new(name: "Movie", year: 2023,
                        director: Director.create(first_name: "John", last_name: "Black"))
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
end