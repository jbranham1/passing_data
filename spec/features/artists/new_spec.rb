require 'rails_helper'

RSpec.describe 'artist New Page' do
  describe "as a user" do
    it "can add a new artist" do

      visit '/artists'
      click_link 'New Artist'
      expect(current_path).to eq("/artists/new")

      fill_in 'Name', with: "Bob"
      click_on "Create Artist"

      expect(current_path).to eq("/artists")
      expect(page).to have_content("Bob")
    end
  end
end
