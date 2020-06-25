feature "View hit points" do
  scenario "displaying hit points" do
    visit("/")
    fill_in :name1, with: "Iryna"
    fill_in :name2, with: "India"
    click_button "Submit"
    expect(page).to have_content "60/60 HP"
  end
end