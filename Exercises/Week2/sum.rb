require 'rspec'

class StringCalculator
  def sum(stringNumbers)
    numbers = stringNumbers.split(",")
    result = 0
    numbers.each do |num| 
      result += num.to_i
    end
    result
  end

RSpec.describe "StringCalculator" do

  #Utiliza el before para ejecutarlo antes de cada it
  before :each do
    @calc =StringCalculator.new
  end

  it "should return 0 for an empty string" do
    expect(@calc.sum("")).to eq(0)
  end

  it "should return 2 when only that number" do
    expect(@calc.sum("2")).to eq(2)
  end

  it "should return 7 when only that number" do
    expect(@calc.sum("2, 5")).to eq(7)
  end

  it "should return 8 when only that number" do
    expect(@calc.sum("1, 2, 5")).to eq(8)
  end
end

end

  #Utiliza el let

#   let(:calculator) {StringCalculator.new}

#   it "should return 0 for an empty string" do
#     expect(calculator.sum("")).to eq(0)
#   end

#   it "should return 2 when only that number" do
#     expect(calculator.sum("2")).to eq(2)
#   end

#   it "should return 7 when only that number" do
#     expect(calculator.sum("2, 5")).to eq(7)
#   end

#   it "should return 8 when only that number" do
#     expect(calculator.sum("1, 2, 5")).to eq(8)
#   end
# end


=begin
if 0 == puts StringCalculator.new.sum("")
  puts "Funciona!!"
else
  puts "Está roto!!"
end

if 2 == puts StringCalculator.new.sum("2")
  puts "Funciona!!"
else
  puts "Está roto!!"
end

if 7 == puts StringCalculator.new.sum("2, 5")
  puts "Funciona!!"
else
  puts "Está roto!!"
end

if 8 == puts StringCalculator.new.sum("1, 2, 5")
  puts "Funciona!!"
else
  puts "Está roto!!"
end
=end