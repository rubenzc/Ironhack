class ShoppingCart
  def initialize

    @list_of_prices = {apple: 10, orange: 5, grapes: 15, banana: 20, watermelon: 50}
    @fruits = {}
  end

  #Método para añadir items al carro
  def add_item_to_cart(item)
    if @fruits[item]
      @fruits[item]+=1
    else
      @fruits[item]=1
    end
  end

  #Método que muestra el carro de la compra
  def show_items
    @fruits.each do |fruit, quant|
      puts "#{quant} #{fruit}: #{@list_of_prices[fruit]*quant}$"
    end
  end

  def checkout
    total_cost = 0
    @fruits.each do |fruit, quant|
      total_cost += @list_of_prices[fruit]*quant
    end
    puts "Your total cost is: #{total_cost} $"

    discount_cost = 0
    @fruits.each do |fruit, quant|
      discount_cost += @list_of_prices[fruit]*@new_cost
    end
    puts "Your discount is: #{discount_cost} $"
  end

  def discounts
    @fruits.each do |fruit, quant|
      #Descuento manzanas (2*1)
      if fruit == :apple && (quant >= 2)
        @new_cost = quant/2
      end
      #Descuento naranjas (3*2)
      # if fruit == :orange && (quant >= 3)
      #   @new_cost = quant - (quant*0.33)
      # end
      # #Descuento naranjas (3*2)
      # if fruit = :grapes && (quant >= 4)
      # 
      # end
    end
  show_items
  end

end


#Shopping cart where you can add items
cart = ShoppingCart.new
cart.add_item_to_cart :apple
cart.add_item_to_cart :banana
cart.add_item_to_cart :banana
cart.add_item_to_cart :orange
cart.add_item_to_cart :watermelon
cart.discounts
cart.checkout