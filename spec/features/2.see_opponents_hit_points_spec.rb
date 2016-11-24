require './app'

RSpec.feature "Check opponent's hit points", :type => :feature do
  scenario "Player 1 views Player 2's hit points" do
    sign_in_and_play
    visit "/player1_turn"
    expect(page).to have_text("#{$game.player2.hp} HP")
  end
end
