require 'rails_helper'

RSpec.describe "directors/index", type: :view do
  before(:each) do
    assign(:directors, [
      Director.create!(
        first_name: "First Name",
        last_name: "Last Name"
      ),
      Director.create!(
        first_name: "First Name",
        last_name: "Last Name"
      )
    ])
  end

  it "renders a list of directors" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("First Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Last Name".to_s), count: 2
  end
end
