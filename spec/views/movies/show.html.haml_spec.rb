require 'rails_helper'

RSpec.describe "movies/show", type: :view do
  before(:each) do
    assign(:movie, Movie.create!(
      title: "Title",
      director_id: 2,
      genre: "Genre"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Genre/)
  end
end
