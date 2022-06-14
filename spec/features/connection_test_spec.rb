feature "Check basic server connection" do
  scenario "Returns a known message showing connection established" do
    visit('/')
    expect(page).to have_content('Welcome to MakersBNB, the place to rent properties')
  end
end
