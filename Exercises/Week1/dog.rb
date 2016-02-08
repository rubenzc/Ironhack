#EXERCISE 1. CONSTRUCTOR. DOG

class Dog
	def initialize (arg1, arg2, bark)
		@name = arg1
		@breed = arg2
		@bark = bark
	end
	def bark
		puts @bark
	end 
end

perro1 = Dog.new("Tod", "pitbull", "grrrrrr")
perro1.bark("grrrrrrr")

#################

class Dog
	def initialize (arg = "Toby", arg2)
		@name = "Toby"
		#raza
		@breed = "Lab"
	end
	def bark (sound)
		puts sound
	end 
end

perro1 = Dog.new("Rufo", "pitbull")
perro1.bark("grrrrrrrr")


################################################

#EXERCISE. INHERITANCE

class Dog
	def initialize (arg1, arg2)
		@name = arg1
		@breed = arg2
		@bark = bark
	end
	def bark (bark)
		puts bark
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

mascota = PetDog.new("Rufo", "grrrrr", "Ru")

#ATRIBUTE ACCESORS


class Dog
	attr_accessor: name #Si quieres saber el nombre del perro, con un Dog.name
	#es suficiente porque ya te genera el metodo directamente
	attr_reader: breed #El reader sólo te deja leer
	def initialize (arg1, arg2)
		@name = arg1
		@breed = arg2
		@bark = bark
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


#EXERCISE SMELL

class Dog
	#Atribute accesors. Método que devuelve el nombre del perro
	attr_accessor: name #Si quieres saber el nombre del perro, con un Dog.name
	#es suficiente porque ya te genera el metodo directamente
	attr_reader: breed #El reader sólo te deja leer
	def initialize (arg1, arg2)
		@name = arg1
		@breed = arg2
		@bark = bark
		@people_smelled = Array.new
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
		#Guardo en el archivo cada persona olida
		people_smelled = File.open("smelled.txt", "a")
		people_smelled.puts(person)
		people_smelled.close
	end

	def people_smelled
		#Aquí leo el contenido y recupero la gente a la que he olido
		@people_smelled 
		people_smelled = File.open("smelled.txt", "r")
		people_smelled.close
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
toby.people_smelled ----> ["pepe", "luis", "paco"]

#Imprime el array con la gente olida
puts toby.people_smelled.inspect

