class FoodsController < ApplicationController
  def index
    @food = FoodSearch.new.get_foods(params[:q])
  end
end

# <%= @food.count %> total results - First 10 results listed below