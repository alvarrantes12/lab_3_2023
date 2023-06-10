require 'rails_helper'

RSpec.describe Director, type: :model do
  subject {
    described_class.new(first_name: "Quientin",
                        last_name: "Tarantino"
                       )
  }

  it "valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without first name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without last name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end
end

