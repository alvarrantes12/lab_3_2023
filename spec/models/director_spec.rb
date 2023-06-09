require 'rails_helper'
RSpec.describe Director, type: :model do
 
  subject {
  described_class.new(first_name: "Spr",
                      last_name: "Wikip",
                       )
  }

  it "validate isnt empty" do
    expect(subject).to be_valid
  end

  it "it validates isnt valid without a name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "it validates isnt valid without last_name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it "it validates it is a name with less than 3 letters characters" do
    subject.first_name = "dj"
    expect(subject).to_not be_valid
  end
end
