require 'rails_helper'

RSpec.describe Movie, type: :model do
  subject {
    described_class.new(name: "The Dark Rider",
                        year: 2022,
                        director: Director.create(first_name: "Isaac", last_name: "Lazo"))
  }

  it "valid with valid attributes" do
    expect(subject).to be_valid
  end 
end
