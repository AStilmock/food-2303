require "rails_helper"

RSpec.describe Food do
  it "exists and has attributes" do
    data = {
      :code=>"555555",
      :description=>"Not Sweet Potatoes",
      :owner=>"Not Owned",
      :ingredients=>"Not Organic Sweet Potatoes."
    }


    food = Food.new(data)
    expect(food).to be_a(Food)
    expect(food.code).to eq(data[:gtinUpc])
    expect(food.description).to eq(data[:description])
    expect(food.owner).to eq(data[:brandOwner])
    expect(food.ingredients).to eq(data[:ingredients])
  end
end