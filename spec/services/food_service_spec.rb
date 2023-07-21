require "rails_helper"

RSpec.describe "Food Service" do
  it "can search for foods by keyword" do
    search = FoodService.new.foods_search("sweet potatoes")
    food = search[:foods].first
    expect(search).to be_a(Hash)
    expect(food).to have_key(:gtinUpc)
    expect(food[:gtinUpc]).to be_a(String)

    expect(food).to have_key(:description)
    expect(food[:description]).to be_a(String)

    expect(food).to have_key(:brandOwner)
    expect(food[:brandOwner]).to be_a(String)

    expect(food).to have_key(:ingredients)
    expect(food[:ingredients]).to be_a(String)
  end
end