require_relative '../lib/PasswordChecker.rb'
require 'pry'

RSpec.describe PasswordChecker do
  before :each do
    @pass = PasswordChecker.new
  end

  describe "#long" do
    it "Check if long is more than 8 characters" do
      expect(@pass.long("passworddeprueba")).to eq(true)      
    end
  end

  describe "#string_downcase" do
    it "Check if password contains at least 1 lowercase letter" do
      expect(@pass.string_downcase("pAsswoRddeprueba")).to eq(true)      
    end
  end

  describe "#string_upcase" do
    it "Check if password contains at least 1 upcase letter" do
      expect(@pass.string_upcase("pAsswoRddeprueba")).to eq(true)      
    end
  end

  describe "#string_number" do
    it "Check if password contains at least 1 number" do
      expect(@pass.string_number("pAsswoRddep435rueba")).to eq(true)      
    end
  end

  describe "#string_special_char" do
    it "Check if password contains at least 1 special char" do
      expect(@pass.string_special_char("pAsswoR@-dde!p435rueba")).to eq(true)      
    end
  end

  describe "#pass_contains_emailvalue" do
    it "Check if password contains name or doamin of email" do
      expect(@pass.pass_contains_emailvalue("name@domain.com", "holatu")).to eq(true)      
    end
  end

end
