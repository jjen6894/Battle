def sign_in_and_play
  visit '/'
  fill_in "player1_name", :with => "George"
  fill_in "player2_name", :with => "Pea"
  click_button "Save"
end

def attack
  click_button "Attack"
end

def defeat_player_2

  6.times do
    attack
    click_button("Ok, back to battle!")
  end

  attack

end
