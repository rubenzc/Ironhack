class ShoppingCart
  def initialize

    @list_of_prices = {apple: 10, orange: 5, grapes: 15, banana: 20, watermelon: 50}
    @fruits = {}
  end

  #Método para añadir items al carro
  def add_item_to_cart(items)
    if @fruits[item]
      @fruits[item]+=1
    else
      @fruits[item]=1
    end
  end

  #Método que muestra el carro de la compra
  def show_items
    @fruits.each do |fruit, quant|
      puts "#{quant} #{@fruit}: #{@list_of_prices[fruit] * quant}"
      puts @list_of_prices[fruit]
    end
  end

  def checkout
    total_cost = 0
    
    @fruits.each do |fruit, quant|
      total_cost += @list_of_prices[fruit] * quant
    end

  puts "Your total cost is: #{total_cost} "
  end

end


#Shopping cart where you can add items
cart = ShoppingCart.new
cart.add_item_to_cart :apple
cart.add_item_to_cart :banana
cart.add_item_to_cart :banana
cart.add_item_to_cart :orange
cart.add_item_to_cart :watermelon
cart.show_items
cart.checkout