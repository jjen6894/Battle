require 'game'

describe Game do
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
  subject(:game) { described_class.new(player1, player2) }


  it "should perform attacks on the other player" do
    allow(player2).to receive(:lose_hp).and_return("you hit me!")
    expect(game.attack(player2)).to eq "you hit me!"
  end

  it "performs unsuccesful attack" do
    allow(Kernel).to receive(:rand).and_return(13)
    allow(player2).to receive(:lose_hp)
    expect(game.attack(player2, 20)).to eq nil
  end

end
