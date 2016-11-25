require_relative 'player'

class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def attack(attacked, number = 10)
    # self.player2.lost_hp? = false
    attacked.lose_hp(number) if attack?(number)
  end

  def attack?(number)
    rand(number).between?(0,10)
  end

end
