require 'rails_helper'

RSpec.describe "Food Search Home Page" do
  describe "has search for foods" do
    it "food search goes to food page" do
      visit root_path

      fill_in :q, with: "sweet potatoes"
      click_button "Search"
      expect(current_path).to eq(foods_path)

      expect(page).to have_content("Foods List with SWEET POTATOES")
      expect(page).to have_content("Total Search Results: 55579")
      expect(page).to have_content("gtinUpc Code: 832298010009")
      expect(page).to have_content("Food description: SWEET POTATOES")
      expect(page).to have_content("Owner: NOT A BRANDED ITEM")
      expect(page).to have_content("Ingredients: ORGANIC SWEET POTATOES.")
    end
  end
end