# server.rb
require "sinatra"
require "sinatra/reloader" if development?
require "pry"
require "artii"

#1. 
get "/ascii/:word" do
  word = params[:word]
  a = Artii::Base.new :font => 'slant'
  @paint_word = a.asciify(word)
  erb(:paint_word)
end


#2
get "/ascii/:word/?:font?/?:secret?" do
  word = params[:word]
  secrt = params[:secret]
  #Check Font
  if params[:font] != nil
      a = Artii::Base.new :font => params[:font]
  else
      a = Artii::Base.new :font => "alligator"
  end
  #Check unicorn & special & secret
  if params[:word] == "unicorn" && params[:font] =="special" && params[:secret] == "secret"
    '<img src="/unicorn.jpg" alt="A happy unicorn"/>'
  else
    "<pre>#{a.asciify(word)}</pre>"
  end

  
end


# #3.UNICORN
# get "/ascii/:magic_word/?:font?" do
# if params[:magic_word] == "unicorn"
#     <img src="/unicorn.jpg" alt="A happy unicorn">
# else
#   word = params[:word]
# if params[:font] != nil
#       a = Artii::Base.new :font => params[:font]
#   else
#       a = Artii::Base.new :font => "alligator"
# end
#   "<pre>#{a.asciify(word)}</pre>"
# end
# end