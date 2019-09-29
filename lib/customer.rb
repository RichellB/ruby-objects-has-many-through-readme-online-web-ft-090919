class Customer
  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end
  
  def meals
    Meal.all.select do |meal|
      meal.customer == self
    end
  end
  
  def waiters
    meals.map do |meal|
      meal.waiter
    end
  end
end