require 'rails_helper'

RSpec.describe 'Songs Show Page' do
  describe "as a user" do
    it "should show the song's title and artists" do
      prince = Artist.create!(name: 'Prince')
      rtj = Artist.create!(name: 'Run The Jewels')

      beret = prince.songs.create!(title: 'Raspberry Beret', length: 345, play_count: 34)
      rain = prince.songs.create!(title: 'Purple Rain', length: 524, play_count: 19)

      legend = rtj.songs.create!(title: 'Legend Has It', length: 2301, play_count: 2300000)
      talk = rtj.songs.create!(title: 'Talk to Me', length: 2301, play_count: 2300000)

      visit "/songs/#{rain.id}"

      expect(page).to have_content(rain.title)
      expect(page).to have_content(prince.name)
      expect(page).to_not have_content(legend.title)
      expect(page).to_not have_content(rtj.name)
    end
  end
end
