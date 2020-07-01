class Restaurant

  attr_reader :name, :opening_time, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def closing_time(hours)
    opening_time_int = opening_time.to_i
    closing_time_int = opening_time_int + hours
    closing_time_int.to_s + ':00'
  end

  def open_for_lunch?
    @opening_time.to_i < 12
  end

  def menu_dish_names
    dish_upcase = []
    @dishes.each do |dish|
      dish_upcase << dish.upcase
    end
    dish_upcase
  end

  def announce_closing_time(hours)
    closing_time = @opening_time.to_i + hours
    if closing_time >= 12
      announcement = "#{name} will be closing at #{closing_time - 12}:00PM"
      else
      announcement = "#{name} will be closing at #{closing_time}:00AM"
    end
  end
  
end
