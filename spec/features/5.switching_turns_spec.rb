require './app'

RSpec.feature "Switching turns", :type => :feature do
  before do
    sign_in_and_play
    attack
    click_button("Ok, back to battle!")
  end
  scenario "Player 2's turn" do
    expect(page).to have_text("#{$game.player1.hp} HP")
  end

  scenario "Attacking player 1 reduces his/her HP by 10" do
    attack
    expect($game.player1.hp).to eq(Player::DEFAULT_HP - 10)
  end
end
