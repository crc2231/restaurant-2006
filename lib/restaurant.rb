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
  #
  # def menu_dish_names
  #   names_upcased = []
  #   @dishes.each do |dish|
  #     names_upcased << dish.upcase
  #   end
  #   names_upcased
  # end
  #
  # def announce_closing_time(hours)
  #   time = closing_time(hours) + "AM"
  #   if closing_time(hours).to_i >= 12
  #     time = (closing_time(hours).to_i - 12).to_s + ':00PM'
  #   end
  #   "#{@name} will be closing at #{time}"
  # end
end
