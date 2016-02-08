class User
  def initialize(user, password)
    @user = user
    @password = password
  end

  def login

    if @user == "ruben" && @password == 123
      puts("Correct login!!")
      #Llamada a función contador de palabras
      puts("Write a sentence please")
      user_sentence = gets.chomp
      puts count_words(user_sentence)

    else
      puts("Incorrect login :(")
    end

  end

  def count_words(sentence)
      #Primero secciono la cadena y devuelvo el número de palabras
      sentence.split.count
    end
end

#Creación del objeto user
user = User.new("ruben", 123)
#Solicito acceder
user.login


################################################


#MI SCRIPT HACE MUCHAS COSAS

class Counter
    def self.word_count(text)
        text.split.size
    end
end

class User
    def initialize (username, password)
        @username = username
        @password = password
    end
    def authenticate
        @password == "12345" ? true : false
    end
end


puts "enter your username:"
username = gets.chomp
puts "enter your password:"
password = gets.chomp
user = User.new(username, password)
if user.authenticate
    puts "enter a text:"
    text = gets
    size = Counter.word_count(text)
    puts "Your text has #{size} word#{size == 1? '' : 's'}"
else
    puts "wrong password"
end

 
#AHORA HACE MENOS COSAS PORQUE HE EXTRAIDO COMPORTAMIENTO A OTRA CLASE

class Counter
    def self.word_count(text)
        text.split.size
    end
end

class User
    def initialize (username, password)
        @username = username
        @password = password
    end
    def authenticate
        @password == "12345" ? true : false
    end
end

class Authenticator
    def self.authenticateUser
        puts "enter your username:"
        username = gets.chomp
        puts "enter your password:"
        password = gets.chomp
        user = User.new(username, password)
        user ? user : nil
    end
end



if Authenticator.authenticateUser
    puts "enter a text:"
    text = gets
    size = Counter.word_count(text)
    puts "Your text has #{size} word#{size == 1? '' : 's'}"
else
    puts "access denied"
end