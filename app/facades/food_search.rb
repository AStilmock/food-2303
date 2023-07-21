class FoodSearch
  def get_foods(food)
    service = FoodService.new
    request = service.foods_search(food)
    @foods = request[:foods].map do |f|
      Food.new(f)
    end
  end
end