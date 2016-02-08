#EXERCISE SMELL

class Dog
  
  attr_accessor: name 
  #Si quieres saber el nombre del perro, con un Dog.name
  #es suficiente porque ya te genera el metodo directamente
  #El reader sólo te deja leer
  
  attr_reader: breed 
  def initialize (arg1, arg2)
    @name = arg1
    @breed = arg2
    @bark = bark
    # @logfile = "#{@name}_smelled.dog"  Con esta linea le pones el nombre del perro a cada fichero
    #@people_smelled = Array.new
    
    #Con estas dos líneas lo que haces es dejar en blanco el fichero cada vez que haces una solicitud
    #file = File.open("smelled.txt", "w")
    #file.close
  end
  def bark (bark)
    puts bark
  end 

  def name= (str)
    @name = str
  end
  def name
    @name
  end

  def smell(person)
    #@people_smelled << person

    #Guardo en el archivo cada persona olida
    file = File.open("smelled.txt", "a")
    #Escribo en el fichero
    file.puts(person)
    file.close
  end

  def people_smelled
    #@people_smelled

    #Aquí leo el contenido del fichero y recupero un array con la gente a la que ha olido
    file = File.open("smelled.txt", "r")
    file = File.open("#{@name}_smelled.tx")
    #Necesito ahora coger el contenido del fichero y meterlo en una variable
    #Con readlines cada linea del fichero la coge y la convierte en un array
    people = File.readlines
    file.close
    #Ahora lo que quiero es devolver el array entero con todas las personas olidas
    people
  end

end


class PetDog < Dog
  def initialize(name, breed, owner)
    #Con super llamas a las variables que tienes en la clase padre
    super(name, breed)
    @owner = owner
  end
  def fetch
    puts "Go for it!!"
end

toby = Dog.new("Toby", "Teckel")
toby.name = ("Joe")
puts.toby.name

toby.smell("pepe")
toby.smell("luis")
toby.smell("paco")


#Imprime el array con la gente olida
puts toby.people_smelled.inspect

