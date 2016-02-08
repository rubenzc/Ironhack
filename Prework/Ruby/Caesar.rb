
def solve_cipher(cipher, shift=-3)
	cipher_array = cipher.chars

	for i in 0..cipher_array.length-1

		if cipher_array[i] != " "
			unciphered_ord = cipher_array[i].ord + shift
			if unciphered_ord < 97 
				unciphered_ord += 26
			elsif unciphered_ord > 122
				unciphered_ord -= 26
			end
			#puts "unciphered_ord after: #{unciphered_ord}"		
		cipher_array[i] = unciphered_ord.chr
		end
		
	end

	return_string = cipher_array.join
	return return_string
end

puts solve_cipher("ifmmp",25)
puts solve_cipher("pb uhdo qdph lv grqdog gxfn")


######################


#First iteration

def solve_cipher(input)

	#Cogemos la variable y mediante el método map recorremos el array y lo
	#devolvemos modificado
	cipher = input.map |letter|
	arr_cipher.each do |letter.ord -1|
	end

	#Aquí rompemos la cadena separando cada caracter
	cipher = input.split(//)


	arr_cifrado = cipher.map

	cifrado = arr_cifrado.chr

	return cifrado
end

solve_cipher("ifmmp")
# should return "hello"



#Second iteration

def solve_cipher(input, desplazamiento)

	#Rompemos la cadena para separarla por caracteres y creamos otra variable
	# sin ningún valor
	cadena = input.split("")
	array_res = []

	#Recorremos cada uno de los caracteres del array y metemos dentro de la variable 
	# caracter_num su valor en la tabla ASCII más el valor del desplazamiento 
	cadena.each do |caracter|

		caracter_num = caracter.ord + desplazamiento

		#Comprobamos si el carácter con el desplazamiento es menor que la "a" o distinto de " "
		if caracter_num < 97 && caracter != " "
		#En la variable array_res guardamos el valor "textual" del caracter después de
		# haber sido modificado
			array_res << ( 122 - (97- caracter_num) + 1 ).chr
		elsif caracter_num > 122
			array_res <<(97 + (caracter_num - 122)).chr
		#En caso de que sea " " se inserta tal cual
		elsif caracter.ord == 32
			array_res << " "
		else
			array_res << caracter_num.chr
		end

	end

#Join une cada uno de los elementos separados del Array
puts array_res.join

end

solve_cipher("pb uhdo qdph lv grqdog gxfn", -3)