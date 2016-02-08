#ARRAY
compis = ["Javier" ,"Rashed", "Adrián", "Juan Antonio", "J. Lucas" ,"Rubén"]
compis.each do |alumni|
  puts "Good morning!! #{alumni}"
end

#RECORRIDO DEL ARRAY EN UNA LINEA
compis.each {|alumni| puts "Good morning!! #{alumni}" }

#HASH

#Creamos un hash y con un select elegimos a los compis mayores de 25 años

compis = { pepe: 13, mario: 22, luis: 41, loles: 61}

compis.select {|nombre, edad| edad >= 25}

#MAP
#Given an Array with city names all in downcase, return another with those city names properly capitalized.

cities = [ "madrid" ,"paris", "london", "amsterdam" ,"brussels" ]

result_city = []
cities.each do |item|
  result_city << item.capitalized
end
puts result_city


cities.map{ |item| item.capitalized}


#REDUCE
#Given an Array with city names, return the longest.

cities = [ "madrid" ,"paris", "london", "amsterdam" ,"brussels" ]

#ASÍ SE HACE CON UN EACH
longest = ""
cities.each do |city|
  if longest.length < city.length
    longest = city
  end
end
longest

#CON REDUCE
cities.reduce do |longest, city|
  if longest.length z city.length
    city
  else
    longest
  end
end

#CON REDUCE DE MANERA TERNARIA
cities.reduce { |long, city| longest.length < city.length ? city : long}
