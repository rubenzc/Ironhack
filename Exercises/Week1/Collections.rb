#COLLECTIONS

class ProgrammingLanguage
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end

  def add_array(array)
  @array_pushed = array.push(array_of_languages)
  end

  def array_printer(array)
  @array_pushed.each do |language|
    puts "Language: #{language.name} | Age: #{language.age} | Type System: #{language.type} "
  end
  end
end

ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
python = ProgrammingLanguage.new("Python", 24, "Dynamic")
javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
go = ProgrammingLanguage.new("Go", 6, "Static")
rust = ProgrammingLanguage.new("Rust", 5, "Static")
swift = ProgrammingLanguage.new("Swift", 2, "Static")
java = ProgrammingLanguage.new("Java", 20, "Static")

array_of_languages = [ruby, python, javascript, go, rust, swift, java]
#array_printer(array_of_languages)
