class Player
  DEFAULT_HP = 40
  attr_reader :name, :hp
  attr_accessor :losthp
  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
    @losthp = false
  end

  def lose_hp(number)
    self.hp -= number
    self.losthp = true
  end


  private
  attr_writer :hp
end
