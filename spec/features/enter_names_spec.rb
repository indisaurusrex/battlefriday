feature "Enter names" do
  scenario "submitting names" do
    visit("/")
    fill_in :name1, with: "Iryna"
    fill_in :name2, with: "India"
    click_button "Submit"
    expect(page).to have_content "Iryna vs. India"
  end
end