#CLASE MILKSHAKE
class MilkShake
	def initialize
		@ingredients = []
		@base_price = 3
	end

	def add_ingredient(ingredient)
		@ingredients.push(ingredient)
	end

	def price_of_milkshake
		total_price_of_milkshake = @base_price
			@ingredients.each do |ingredient|
				total_price_of_milkshake += ingredient.price
			end
		total_price_of_milkshake
	end
end

#CLASE INGREDIENTE
class Ingredient
	attr_reader :name, :price
	def initialize(name, price)
		@name = name
		@price = price
	end
end

class ShakeShop
	def initialize
		@milkshake_list = [ ]
	end

	def add_milkshakes(milkshake)
		@milkshake_list.push(milkshake)
	end

	def checkout
		total_cost = 0
		@milkshake_list.each do|milkshake|
			total_cost += milkshake.price_of_milkshake
		end
	total_cost
	end

end

banana = Ingredient.new("Banana",2)
chocolate_chips = Ingredient.new("Chocolate chips", 1)
cream = Ingredient.new("Cream", 7)
menta = Ingredient.new("Menta", 4)

rubens_milshake = MilkShake.new
rubens_milshake.add_ingredient(banana)
rubens_milshake.add_ingredient(chocolate_chips)
rubens_milshake.add_ingredient(cream)

martas_milkshake = MilkShake.new
martas_milkshake.add_ingredient(chocolate_chips)
martas_milkshake.add_ingredient(menta)

puts rubens_milshake.price_of_milkshake
puts martas_milkshake.price_of_milkshake

rubens_order = ShakeShop.new
martas_order = ShakeShop.new
rubens_order.add_milkshakes(rubens_milshake)
martas_order.add_milkshakes(martas_milkshake)

puts rubens_order.checkout
puts martas_order.checkout
