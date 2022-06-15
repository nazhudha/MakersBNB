feature 'add a space' do
  scenario 'it shows the label name field' do
    visit '/makersbnb/add'
    expect(page).to have_content 'Add your space!'
    expect(page).to have_content 'Name'
  end

  scenario 'it adds a name of a space and shows confirmation' do
    visit '/makersbnb/add'
      fill_in 'Name', with: 'The Moon'
      click_on 'Submit'
      expect(page).to have_content 'Here is a confirmation of your new space details:'
      expect(page).to have_content 'Name: The Moon'
  end

  scenario 'it adds a name of a space and shows confirmation' do
    visit '/makersbnb/add'
      fill_in 'Name', with: 'Buckingham Palace'
      click_on 'Submit'
      expect(page).to have_content 'Here is a confirmation of your new space details:'
      expect(page).to have_content 'Name: Buckingham Palace'
  end
end
