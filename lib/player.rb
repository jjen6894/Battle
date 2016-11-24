class Player
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 20
  end

  def lose_hp(number)
    self.hp -= number
  end

  private
  attr_writer :hp
end
