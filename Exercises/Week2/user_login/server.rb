require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require_relative './lib/PasswordChecker.rb'

get "/" do
  erb(:server)
end

post "/send_data" do
  #You receive the params from the form
  @email = params[:email]
  @password  = params[:password]

  if PasswordChecker.long(@password) && PasswordChecker.string_downcase(@password) && PasswordChecker.string_upcase(@password) && PasswordChecker.string_number(@password) && PasswordChecker.string_special_char(@password) && PasswordChecker.pass_contains_emailvalue(@email, @password)
    email_elements = @email.split("@")
    @email = email_elements[0]
    erb(:user_ok)
  else
    redirect to("/error/#{@email}")
  end
end


#   if PassValidator.long(@password) && PassValidator.string_downcase(@password) && PassValidator.string_upcase(@password) && PassValidator.string_number(@password) && PassValidator.string_spec_char(@password) && PassValidator.pass_cont_emailvalue(@email, @password)
#     erb(:ok)
#   else
#   redirect to("/error/#{@email}")
# end
# end

get "/error/:value" do
  @email_recover = params[:email]
  erb(:error)
end

