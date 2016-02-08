

class Robot
  attr_accessor :life, :weak, :strong, :definitive

  def initialize
    @life = 50
    @weak = 10
    @strong = 20
    @definitive = 50
  end

  def get_attack
    puts "Choose your attack: weak, strong or definitive"
    attack = gets.chomp
    attack
  end

end


class Referee 

  def judge

  end

end


class RoboBattle
  attr_accessor :robot1, :robot2

  def initialize(robot1,robot2)
    @robot1 = robot1
    @robot2 = robot2
    @referee = Referee.new
    @finish = false
  end

  def start

    referee.judge(robot1.get_attack, robot2.get_attack)

  end

end

robot1 = Robot.new
robot2 = Robot.new
battle = RoboBattle.new(robot1, robot2)




