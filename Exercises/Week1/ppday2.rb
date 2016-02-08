class ProgrammingLanguage
  attr_accessor :name, :age, :type

  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
 end

class LanguageCollection
	attr_accessor :languages

	def initialize
		@languages= []
	end

	def add_languages(language)
		@languages << language
	end

  def array_printer
  @languages.each {| language | puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"}
  end

  def array_new_year
	  @languages=@languages.map do |language|
	  	language.age += 1
	  	language
	  end
	  self.array_printer
  end

  def sort_by_year
  	@languages= @languages.sort{|a,b| b.age <=> a.age}
  	self.array_printer
  end

  def random_sort
  	@languages= @languages.shuffle
  	self.array_printer
  end

end

lg= LanguageCollection.new

lg.add_languages(ProgrammingLanguage.new("Ruby", 21, "Dynamic"))
lg.add_languages(ProgrammingLanguage.new("Python", 24, "Dynamic"))
lg.add_languages(ProgrammingLanguage.new("JavaScript", 20, "Dynamic"))
lg.add_languages(ProgrammingLanguage.new("Go", 6, "Static"))
lg.add_languages(ProgrammingLanguage.new("Rust", 5, "Static"))
lg.add_languages(ProgrammingLanguage.new("Swift", 2, "Static"))
lg.add_languages(ProgrammingLanguage.new("Java", 20, "Static"))

puts "*****2016*****"
lg.array_printer
puts "*****2017*****"
lg.array_new_year
puts "*****SORTED BY YEAR*****"
lg.sort_by_year
puts "*****RANDOM*****"
lg.random_sort