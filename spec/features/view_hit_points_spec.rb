feature "View hit points" do
  scenario "displaying hit points" do
    sign_in_and_play
    expect(page).to have_content "60/60 HP"
  end
end