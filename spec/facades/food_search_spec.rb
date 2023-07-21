require "rails_helper"

RSpec.describe FoodSearch do
  describe "class methods" do
    it "returns foods from search" do
      all_foods = FoodSearch.new.get_foods("sweet potatoes")
      expect(all_foods).to be_an(Array)
      expect(all_foods.first).to be_a(Food)
      expect(all_foods.first.code).to be_a(String)
      expect(all_foods.first.description).to be_a(String)
      expect(all_foods.first.owner).to be_a(String)
      expect(all_foods.first.ingredients).to be_an(String)
    end
  end
end