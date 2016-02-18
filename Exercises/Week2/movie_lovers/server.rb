# server.rb
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'imdb'

require_relative './lib/search_movies.rb'
require_relative './lib/show_movies.rb'

get "/" do
  #erb es la vista que quieras que te imprima
  erb(:search_movies)
end

post "/show_movies" do
  #Query es la variable que le paso a través del formulario
  word = params[:word]
  #Aquí hacemos la llamada a Imdb
  film = Imdb::Search.new(word)
  binding.pry
  #Ahora cargo la vista con los valores modificados
  erb(:show_movies)
end