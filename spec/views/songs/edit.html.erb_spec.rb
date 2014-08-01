require 'rails_helper'

RSpec.describe "songs/edit", :type => :view do
  before(:each) do
    @song = assign(:song, Song.create!(
      :name => "MyString",
      :artist => "MyString",
      :genre => "MyString",
      :bpm => 1,
      :album => "MyString",
      :key => "MyString"
    ))
  end

  it "renders the edit song form" do
    render

    assert_select "form[action=?][method=?]", song_path(@song), "post" do

      assert_select "input#song_name[name=?]", "song[name]"

      assert_select "input#song_artist[name=?]", "song[artist]"

      assert_select "input#song_genre[name=?]", "song[genre]"

      assert_select "input#song_bpm[name=?]", "song[bpm]"

      assert_select "input#song_album[name=?]", "song[album]"

      assert_select "input#song_key[name=?]", "song[key]"
    end
  end
end
