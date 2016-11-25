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

  it "should lose HP when attacked" do
    player.lose_hp(10)
    expect(player.hp).to eq(Player::DEFAULT_HP - 10)
  end

  it "should change 'lost hp' value to true if hp is lost" do
    player.lose_hp(10)
    expect(player.losthp).to eq true
  end
end
