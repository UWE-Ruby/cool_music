require 'rails_helper'

RSpec.describe "songs/show", :type => :view do
  before(:each) do
    @song = assign(:song, Song.create!(
      :name => "Name",
      :artist => "Artist",
      :genre => "Genre",
      :bpm => 1,
      :album => "Album",
      :key => "Key"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Artist/)
    expect(rendered).to match(/Genre/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Album/)
    expect(rendered).to match(/Key/)
  end
end
