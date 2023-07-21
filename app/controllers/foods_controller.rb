class FoodsController < ApplicationController
  def index
    foods = FoodSearch.new.get_foods(params[:q])
    @food = foods.first(10)
    food_count = FoodService.new.foods_search(params[:q])
    @total_count = food_count[:totalHits]
  end
end

