# server.rb
require "sinatra"
require "sinatra/reloader" if development?
require "pry"

enable(:sessions)

get "/session_test" do
  session[:saved_value]
end

#1. Aquí lo añades
get "/session_test/:text" do
  text = params[:text]
  session[:saved_value] = text
end

get "/" do
  "<h1>My first Sinatra app.</h1>"
end

get "/hi" do
  @greeting = "Hello, world!"
  erb(:hipage)
end

get "/about" do
  "My name is Rubén and I'm coding!!"
end

get "/author" do
  "Welcome to the author!!"
  #Con esta sentencia llamas al archivo author.erb
  erb(:author)
end

get '/time' do
  @time = Time.now
  erb(:time)
end

get "/pizza" do
  @ingredients = ["cheese", "pepperoni", "mushrooms"]
  erb(:pizza)
end

get "/users/:username" do
  #Aquí llamas a la url: users/pepote
  @username = params[:username]
  erb(:user_profile)
end

#Sumar a través de la url
get "/sum/:num1/:num2" do
  @num1 = params[:num1]
  @num2 = params[:num2]
  binding.pry
  erb(:sum)
end

#Restar número de horas a la hora actual a través de la url
get "/hours/ago/:num_hours" do
  @seconds = params[:num_hours].to_i * 60 * 60
  erb(:hours)
end


#Restar número de horas a la hora actual a través de la url
get "/foo" do
  status(418)
  "I'm a tea pot!"
end



