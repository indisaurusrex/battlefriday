feature "Attack opponent" do
  scenario "confirm attack made" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_text("You attacked player 2!")
  end
end

feature "show attack effect" do
  scenario "HP reduced by 10 by attack" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_text("Player 2: 50/60 HP")
  end
end