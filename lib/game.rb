require_relative 'player'

class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def attack(attacked, number = 10)
    attacked.lose_hp(number)
  end

end
