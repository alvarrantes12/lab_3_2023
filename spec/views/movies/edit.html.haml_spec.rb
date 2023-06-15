require 'rails_helper'

RSpec.describe "movies/edit", type: :view do
  let(:movie) {
    Movie.create!(
      title: "MyString",
      director_id: 1,
      genre: "MyString"
    )
  }

  before(:each) do
    assign(:movie, movie)
  end

  it "renders the edit movie form" do
    render

    assert_select "form[action=?][method=?]", movie_path(movie), "post" do

      assert_select "input[name=?]", "movie[title]"

      assert_select "input[name=?]", "movie[director_id]"

      assert_select "input[name=?]", "movie[genre]"
    end
  end
end
