require 'rails_helper'

RSpec.describe 'artist Index Page' do
  describe "as a user" do
    it "can see a list of all artist names" do
      talking_heads = Artist.create!(name: 'Talking Heads')
      bowie = Artist.create!(name: 'David Bowie')

      visit '/artists'
      
      expect(page).to have_content(talking_heads.name)
      expect(page).to have_content(bowie.name)
    end
  end
end
