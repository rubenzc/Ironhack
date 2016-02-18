require 'rspec'
require 'pry'

require_relative '../lib/search_movies.rb'
require_relative '../lib/show_movies.rb'





RSpec.describe "Search movie tests" do

let(:param_movie){ "funny" }
let(:search_movies){ Search_movies.new(param_movie) }

# Se ejecuta siempre antes del resto de test
# before :each do
#   @word_search = Search_movies.new("funny")
# end

it "Returns a variable not empty" do
  expect(search_movies.word_search).to eq (param_movie)
end

end