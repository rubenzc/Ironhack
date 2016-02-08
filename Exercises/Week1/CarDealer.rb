class CarDealer
  def initialize(inventory)
    @inventory = inventory
  end

  def cars (cars)
    #Accedemos al símbolo del hash
    #Abajo asignamos lo que va a salir con el hash de cars y además le ponemos
    #la primera letra en mayúscula
    car_out = cars.capitalize + ": "
    #Aquí recorremos
    #El each_with_index es para quitar la coma del final después de recorrer el array
    #Le pasamos ford o seat por parámetro, pero realmente donde accedemos es al inventario.
    #Luego le decimos que queremos acceder al símbolo Ford o Seat en función de lo que necesitemos
    @inventory[cars.to_sym].each_with_index do |model, index|
      #Esta es la variable de salida por pantalla, a la que vamos añadiendo los modelos
      car_out += model
      #En este procedimiento recorremos todo el array hasta que sepa que es el último coche
      #del array 
      if index < @inventory[cars.to_sym].length - 1
      car_out += ", "
      end
    end
    puts car_out
  end

end

cars = {
  ford: ["Fiesta", "Mustang"],
  seat: ["Ibiza", "Leon", "Toledo"]
}

#Creación de objeto e inicializándolo a cars
car_dealer = CarDealer.new(cars)
car_dealer.cars("ford")
car_dealer.cars("seat")


###############################

class CarDealer
  def initialize(inventory)
    @inventory = inventory
  end

  def cars(brand)
    @inventory.select { |car| car[:brand].downcase == brand.downcase}
  end

  def pretty_print_inventory
  end

end

inventory = [
  {}

]