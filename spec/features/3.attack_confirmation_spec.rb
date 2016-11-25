require './app'

RSpec.feature "Attacking player 2", :type => :feature do
  scenario "Confirm succesful attack" do
    sign_in_and_play
    attack
    message = "You have administered a slap round the chops to Pea!"
    expect(page).to have_content(message)
    click_button("Ok, back to battle!")
    expect(page).to have_content("HP")
  end

  scenario "Confirm unsuccesful attack" do
    sign_in_and_play
    allow($game.player2).to receive(:losthp).and_return(false)
    attack
    message = "Your attack was unsuccessful, you got lucky Pea"
    expect(page).to have_content(message)

  end
end
