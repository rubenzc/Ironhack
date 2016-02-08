#Piedra, papel o tijeras

#Refactorizado



def StonePaperScissors(user, machine)
	rules = {
	piedra: [:tijeras]
	papel: [:piedra]
	tijeras: [:papel]
	}
	result = ""

	if user_res = machine_res
		result = "Empate!!"
	elsif
		rules[user_res].include?
end


answer_array = ["piedra", "papel", "tijeras"]
user_res = ""
machine_res = ""

while !answer_array.include?(user_res)
	puts("Elige piedra, papel o tijeras para el primer jugador")
	user_res = gets.chomp;
end

while !answer_array.include?(machine_res)
	puts("Elige piedra, papel o tijeras para el segundo jugador")
	machine_res = gets.chomp;
end

StonePaperScissors(user_res, machine_res)

########################################################################


#Comparamos las opciones de cada jugador y mostramos por pantalla el resultado
def compare_answers(user_res, machine_res)
	result =""
	if user_res == machine_res
		result << "Empate!!"
	else
		if user_res = "piedra" && machine_res = "papel"
			result << "Gana el segundo jugador!!"

		elsif user_res = "piedra" && machine_res = "tijeras"
			result << "Gana el primer jugador!!"

		elsif user_res = "papel" && machine_res = "piedra"
			result << "Gana el primer jugador!!"

		elsif user_res = "papel" && machine_res = "tijeras"
			result << "Gana el segundo jugador!!"

		elsif user_res = "tijeras" && machine_res = "piedra"
			result << "Gana el segundo jugador!!"

		elsif user_res = "tijeras" && machine_res = "papel"
			result << "Gana el primer jugador!!"
		end
	end
	puts result
end

answer_array = ["piedra", "papel", "tijeras"]
user_res = ""
machine_res = ""

#Pedimos a los usuarios que introduzcan su elección
while !answer_array.include?(user_res)
	puts("Elige piedra, papel o tijeras para el primer jugador")
	user_res = gets.chomp;
end

while !answer_array.include?(machine_res)
	puts("Elige piedra, papel o tijeras para el segundo jugador")
	machine_res = gets.chomp;
end

compare_answers(user_res, machine_res)