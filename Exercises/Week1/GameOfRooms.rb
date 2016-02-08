class Player
  def initialize(option)
    @current_position = 0
  end
end

class Room
  def initialize(position)
    @current_position = position
  end

  def choose_way
    user_way = ["n", "s", "e", "w"]
    user_res = ""
    #Pedimos al usuario que introduzca su elección
    while !user_way.include?(user_res)
      puts("Where do you want to go?")
      user_res = gets.chomp;
    end
      @user_res
  end

class Game_manager
    def initialize
      @rooms = []
    end

    def add_movement movement
      @rooms << movement
    end

  end
end