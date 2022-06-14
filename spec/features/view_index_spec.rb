feature "Viewing spaces" do
  scenario "Returns a known message showing connection established" do
    visit('/')
    expect(page).to have_content('Welcome to MakersBNB, the place to rent properties')
  end

  scenario "Returns list of spaces (description, name, price) [HARDCODED]" do
    visit('/spaces')
    expect(page).to have_content('Name: Happy House, Description: A really cosy space, where you can relax, Price: 24$/night')
  end

  
end
