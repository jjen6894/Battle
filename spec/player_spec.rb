require 'player'

describe Player do
  let(:name) { double :name }
  subject(:player) { described_class.new(name) }

  it "should know the player's name" do
    expect(player.name).to eq name
  end
  it "should have HP" do
    expect(player.hp).to eq Player::DEFAULT_HP
  end

  it "inflict damage on other player by attacking" do
    player2 = Player.new(:dummy)
    expect{player.attack(player2)}.to change{player2.hp}.by(-10)
  end

end
