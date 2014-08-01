require 'rails_helper'

RSpec.describe "songs/index", :type => :view do
  before(:each) do
    assign(:songs, [
      Song.create!(
        :name => "Name",
        :artist => "Artist",
        :genre => "Genre",
        :bpm => 1,
        :album => "Album",
        :key => "Key"
      ),
      Song.create!(
        :name => "Name",
        :artist => "Artist",
        :genre => "Genre",
        :bpm => 1,
        :album => "Album",
        :key => "Key"
      )
    ])
  end

  it "renders a list of songs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Artist".to_s, :count => 2
    assert_select "tr>td", :text => "Genre".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Album".to_s, :count => 2
    assert_select "tr>td", :text => "Key".to_s, :count => 2
  end
end
