#Función que aplica las reglas del juego para elegir ganador
def StonePaperScissors(user_res, machine_res)
	rules = {
	piedra: [:tijeras],
	papel: [:piedra],
	tijeras: [:papel]
	}
	result = ""

	if user_res = machine_res
		result = "Empate!!"
	elsif
		rules[user_res].include?(machine_res)
		result = "Gana el jugador!!"
	else
		result = "Gana la máquina!!"
	end
end

#Petición de elección al jugador
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