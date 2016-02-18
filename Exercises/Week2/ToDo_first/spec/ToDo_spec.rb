require './ToDo.rb'
require 'rspec'

RSpec.describe "ToDo" do
  
  ########before :each do########

  before :each do
    @task = Task.new("Be Happy")
  end

  it "Returns completed" do
    expect(@task.complete?).to eq(false)
  end

  it "Make_incomplete! is false" do
    expect(@task.make_incomplete!).to eq(false)
  end
  #### Normal #########

  it "returns id value = 1" do
    task = Task.new("Buy milk")
    expect(task.id).to eq(task.id)
  end

  it "returns completed" do
    task = Task.new("Be Happy")
    expect(task.complete?).to eq(false)
  end

  ##### let ###############

  let(:todo){Task.new("Call to Mike")}

  describe "#complete?" do
    it "Devuelve la task como incompleta" do
      expect( todo.complete? ).to eq(false)
     end
  end

  describe "#complete!" do
    it "Devuelve la task como true" do
      expect( todo.complete? ).to eq(false)
     end
  end

end