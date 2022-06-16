feature "Viewing spaces" do
  scenario "Returns a known message showing connection established" do
    visit('/makersbnb')
    expect(page).to have_content('Welcome to MakersBNB') 
    expect(page).to have_content('The place to rent properties')
  end
end
