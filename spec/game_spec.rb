require 'game'

describe Game do
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
  subject(:game) { described_class.new(player1, player) }


  it "should perform attacks on the other player" do
    allow(player2).to receive(:lose_hp)
  end
end
