#Con bucle for

for num in 0..100

	if num % 3 == 0 && num % 5 == 0
		puts "FizzBuzz"
	elsif num % 3 == 0
		puts "Fizz"
	elsif num % 5 == 0
		puts "Buzz"
	else
		puts num
	end
end

#Iteration 2. Utilizando .each do

(1..100).each do |num|

	if num % 3 == 0 && num % 5 == 0
		puts "FizzBuzz"

	elsif num % 3 == 0
		puts "Fizz"

	elsif num % 5 == 0
		puts "Buzz"

	else
		puts num

	end

end

#Iteration 3. Añadiendo Bang

for num in 0..100

	result = ""
	if num % 3 == 0 && num % 5 == 0
		result << "FizzBuzz"
	end
	if num % 3 == 0
		result << "Fizz"
	end
	if num % 5 == 0
		result << "Buzz"
	end
	
	#Si el primer número es 1
	if num.to_s[0] == "1"
		result << "Bang"
	end

	#Si no cumple ninguna de las anteriores condiciones
	if result == ""
		result << num.to_s
	end

	puts result

end


