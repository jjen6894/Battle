require './app'

RSpec.feature "Winning and losing", :type => :feature do
  scenario "Player 1 defeats player 2" do
    sign_in_and_play
    defeat_player_2
    message = "Pea loses. You can gloat over your victory now, George!"
    expect(page).to have_content(message)
  end
end
