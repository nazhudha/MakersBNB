feature "Viewing spaces" do
  scenario "Displays individual descriptive values for a space" do
    visit('/spaces')
    expect(page).to have_content "Name: Happy House, Description: A really cosy space, where you can relax, Price: 24$/night"
  end

  scenario "Displays multiple spaces" do
    visit('/spaces')
    expect(page).to have_content "Name: Buckingham Palace, Description: The biggest house in the world, Price: mil$/night"
    expect(page).to have_content "Name: Happy House, Description: A really cosy space, where you can relax, Price: 24$/night"
  end
end