class Player
  DEFAULT_HP = 40
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def attack(player, number=10)
    player.lose_hp(number)
  end

  def lose_hp(number)
    self.hp -= number
  end

  private
  attr_writer :hp
end
