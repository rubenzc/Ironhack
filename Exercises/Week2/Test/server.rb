# server.rb
require 'sinatra'
require 'sinatra/reloader' if development?


get '/' do
  'Hello world!!'
end

get '/real_page' do
  'Hello home!!'
end

get '/hi' do
  redirect 'real_page'
end
