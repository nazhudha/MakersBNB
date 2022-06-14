feature "Viewing spaces" do
  scenario "Displays individual descriptive values for multiple spaces" do
    visit('/spaces')
    expect(page).to have_content "Name: Happy House, Description: A really cosy space, where you can relax, Price: 24$/night"
  end
end