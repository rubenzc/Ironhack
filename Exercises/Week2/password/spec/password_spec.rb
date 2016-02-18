require_relative '../passwords.rb'
require 'rspec'

RSpec.describe "Password" do

  it "returns true " do
    expect(PasswordChecker.new.check_length("password")).to eq(true)
  end
  it "returns false" do
    expect(PasswordChecker.new.check_length("ruben")).to eq(false)
  end
  it "returns true" do
    expect(PasswordChecker.new.check_length("h1$abcde")).to eq(true)
  end
  it "Check_number returns true" do
    expect(PasswordChecker.new.check_number("h1$abcde")).to eq(true)
  end
  it "check_letter returns true" do
    expect(PasswordChecker.new.check_letter("h1$abcde")).to eq(true)
  end
  it "check_mayuscula returns true" do
    expect(PasswordChecker.new.check_uppercase("H1$abcde")).to eq(true)
  end
  it "check_minuscula returns true" do
    expect(PasswordChecker.new.check_lowercase("h1$abcde")).to eq(true)
  end
  it "everything of the above" do
    expect(PasswordChecker.new.check_password_name("Rubuen@yahoo.com","h1$abcde")).to eq(false)
  end
  it "everything of the above2" do
    expect(PasswordChecker.new.check_password_name("Rubuen@yahoo.com","H1$abcde")).to eq(true)
  end

end