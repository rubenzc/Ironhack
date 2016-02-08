class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end

  #1. List of homes
  def self.print_home_name(homes)
    homes.each do |item|
      puts "#{item.name} in #{item.city}"
      puts "Price: #{item.price} a night"
    end
  end

  #2. Sorting by price
  def self.sort_price(homes)
    answer_array = ["price", "capacity"]
    user_res = ""
    #Pedimos al usuario que introduzca su elección
    while !answer_array.include?(user_res)
      puts("Order by price or capacity?")
      user_res = gets.chomp;
    end

  end

end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]

Home.print_home_name(homes)
Home.sort_price(homes)