require './app'

RSpec.feature "Attacking player 2", :type => :feature do
  scenario "Confirm attack" do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content("You have administered a slap round the chops to Pea!")
  end
end
