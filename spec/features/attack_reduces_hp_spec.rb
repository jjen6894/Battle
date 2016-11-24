require './app'

RSpec.feature "Reducing HP", :type => :feature do
  scenario "Attacking player 2 reduces his/her HP by 10" do
    sign_in_and_play
    attack
    expect($player2.hp).to eq(10)
  end
end
