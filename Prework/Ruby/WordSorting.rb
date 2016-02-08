#WordSorting refactorizado

def ordenar (arr)

   limpiar_arr = arr.gsub(/[^A-Za-z ]/,'') 
   
   arr_limpio = limpiar_arr.split

   arr_limpio.sort! {|x,y| x.upcase <=> y.upcase}

   return arr_limpio

end


puts ordenar("Have a nice day")



################################

# 2. Creamos una función que limpie las cadenas iniciales de
# los puntos y admiraciones

def limpiar_cadena (cadena)

	# Con include detectamos si existe algún punto en la cadena
	if cadena.include? "."
		#Con gsub limpiamos la cadena del punto
		cadena = cadena.gsub ".", ""
	end

	if cadena.include? "!"
		#Aquí quitamos el signo de admiración
		cadena = cadena.gsub "!", ""
	end

	return cadena

end


#3. Ahora mostraremos la cadena ordenada de manera alfabética de la A a la Z

def ordenar_cadena (cadena)

	#Llamamos a la función limpiar_cadena para que haga su función
	cadena = limpiar_cadena(cadena)

	#Separamos/ rompemos la cadena con un espacio
	cadena = cadena.split

	#Ordenamos la cadena 
	cadena = cadena.sort! {|a, z| a.upcase <=> z.upcase}

	return cadena

end

#1. Llamamos a las funciones con las cadenas iniciales a modificar

puts ordenar_cadena("Have a nice day!")
puts ordenar_cadena("Fools fall for foolish follies.")
puts ordenar_cadena("Ruby is a fan language!")


