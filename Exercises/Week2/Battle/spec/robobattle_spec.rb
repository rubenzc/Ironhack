require './robobattle.rb'
require 'rspec'

RSpec.describe "Battle" do

  it "returns weak value" do 
    robot = Robot.new
    expect(robot.weak).to eq(10)
  end

  it "return strong value" do 
    robot = Robot.new
    expect(robot.strong).to eq(20)
  end

  it "return strong value" do 
    robot = Robot.new
    expect(robot.definitive).to eq(50)
  end

  it "check the initial life of robot1" do 
    robot1 = Robot.new
    robot2 = Robot.new
    battle = RoboBattle.new(robot1, robot2)
    expect(battle.robot1.life).to eq(50)
  end

  it "check the initial life of robot2" do 
    robot1 = Robot.new
    robot2 = Robot.new
    battle = RoboBattle.new(robot1, robot2)
    expect(battle.robot2.life).to eq(50)
  end

  it "return definitive option" do
    robot1 = Robot.new
    expect(robot1.get_attack).to eq("definitive")
  end

  it "return weak option" do
    robot1 = Robot.new
    expect(robot1.get_attack).to eq("weak")
  end

    it "return strong option" do
    robot1 = Robot.new
    expect(robot1.get_attack).to eq("strong")
  end
end