feature "Attack opponent" do
  scenario "confirm attack made" do
    sign_in_and_play
    # click_button "Attack"
    expect(page).to have_button("Attack")
    
  end
end