require 'player'

describe Player do
  let(:name) { double :name }
  subject(:player) { described_class.new(name) }

  it "should know the player's name" do
    expect(player.name).to eq name
  end
end
