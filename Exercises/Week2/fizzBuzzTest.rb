require 'rspec'

=begin
class FizzBuzz
  def calculate (num)
      if num % 3 == 0 && num % 5 == 0
        "FizzBuzz"
      elsif num % 3 == 0
        "Fizz"
      elsif num % 5 == 0
        "Buzz"
      else
        num
      end 
  end
end

RSpec.describe "FizzBuzz" do
  it "Should return 1" do
    expect(FizzBuzz.new.calculate(1)).to eq(1)
  end

  it "Should return FizzBuzz" do
    expect(FizzBuzz.new.calculate(15)).to eq("FizzBuzz")
  end

  it "Should return Fizz" do
    expect(FizzBuzz.new.calculate(3)).to eq("Fizz")
  end

   it "Should return Buzz" do
    expect(FizzBuzz.new.calculate(5)).to eq("Buzz")
  end
end

=end

#AHORA REFACTORIZO
class Fizzbuzz
  def conv number
    result = ""
    if number % 3 == 0
      result +="Fizz"
    end
    if number % 5 == 0
      result +="Buzz"
    end
    
    result.empty? ? number : result
  end
end
​
RSpec.describe "Fizzbuzz" do
  before :each  do
    @fizzbuzz = Fizzbuzz.new
  end
  it 'returns 1 if the number is 1' do
    expect(@fizzbuzz.conv(1)).to eq(1)
  end
​
  it 'returns 2 if the number is 2' do
    expect(@fizzbuzz.conv(2)).to eq(2)
  end
​
  it 'returns Fizz if the number is % 3' do
    expect(@fizzbuzz.conv(3)).to eq("Fizz")
  end
​
  it 'returns Fizz if the number is % 3' do
    expect(@fizzbuzz.conv(6)).to eq("Fizz")
  end
​
  it 'returns Buzz if the number is % 5' do
    expect(@fizzbuzz.conv(5)).to eq("Buzz")
  end
​
  it 'returns FizzBuzz if the number is % 5 && % 3' do
    expect(@fizzbuzz.conv(15)).to eq("FizzBuzz")
  end
​
end