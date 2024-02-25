require "rails_helper"

RSpec.describe "landing page", vcr: true, type: :feature do
  describe "search functionality" do
    it "has a search feature" do
      visit root_path

      expect(current_path).to eq("/")
      
      select "Griffin Coffee", from: :location
      click_button "Find Nearest Station"

      expect(current_path).to eq(search_path)
      expect(page).to have_content("Nearest Station")
      expect(page).to have_content("Name: Edgewater Public Market - Tesla Supercharger")
      expect(page).to have_content("Address: 5505 W 20th Ave, 80214")
      expect(page).to have_content("Fuel Type: ELEC")
      expect(page).to have_content("Access Times: 24 hours daily")
    end
  end
end
