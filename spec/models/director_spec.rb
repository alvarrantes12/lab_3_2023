require 'rails_helper'

RSpec.describe Director, type: :model do
  subject {
    described_class.new(first_name: 'John',
                        last_name: 'Doe')
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a first name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a last name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it "has a valid full name" do
    expect(subject.full_name).to eq("John Doe")
  end
end
