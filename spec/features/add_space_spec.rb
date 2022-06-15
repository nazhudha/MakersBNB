feature 'add a space' do
  scenario 'it shows the label name field and description field' do
    visit '/makersbnb/add'
    expect(page).to have_content 'Add your space!'
    expect(page).to have_content 'Name'
    expect(page).to have_content 'Description'
  end

  scenario 'it adds a name and description of a space and shows confirmation' do
    visit '/makersbnb/add'
      fill_in 'Name', with: 'The Moon'
      fill_in 'Description', with: "It's pretty rocky!"
      click_on 'Submit'
      expect(page).to have_content 'Here is a confirmation of your new space details:'
      expect(page).to have_content 'Name: The Moon'
      expect(page).to have_content "Description: It's pretty rocky!"
  end

  scenario 'it adds a name and description of a different space and shows confirmation' do
    visit '/makersbnb/add'
      fill_in 'Name', with: 'Buckingham Palace'
      fill_in 'Description', with: "This place is very fancy"
      click_on 'Submit'
      expect(page).to have_content 'Here is a confirmation of your new space details:'
      expect(page).to have_content 'Name: Buckingham Palace'
      expect(page).to have_content 'Description: This place is very fancy'
  end

  scenario 'it adds the name and description of two spaces and shows confirmation of each separately' do
    visit '/makersbnb/add'
    fill_in 'Name', with: 'Buckingham Palace'
    click_on 'Submit'
    click_on 'Add another space'
    fill_in 'Name', with: 'The Moon'
    fill_in 'Description', with: "It's pretty rocky!"
    click_on 'Submit'
    expect(page).to have_content 'Here is a confirmation of your new space details:'
    expect(page).not_to have_content 'Name: Buckingham Palace'
    expect(page).to have_content 'Name: The Moon'
    expect(page).to have_content "Description: It's pretty rocky!"
  end

  scenario 'it adds the space name and description to the spaces view page' do
    visit '/makersbnb/add'
    fill_in 'Name', with: 'The Moon'
    fill_in 'Description', with: "It's pretty rocky!"
    click_on 'Submit'
    click_on 'view all spaces'
    expect(page).to have_content 'Name: The Moon'
    expect(page).to have_content "Description: It's pretty rocky!"
  end

  scenario 'it adds multiple space names and descriptions to the spaces view page' do
    visit '/makersbnb/add'
    fill_in 'Name', with: 'The Moon'
    fill_in 'Description', with: "It's pretty rocky!"
    click_on 'Submit'
    click_on 'Add another space'
    fill_in 'Name', with: 'Buckingham Palace'
    fill_in 'Description', with: "This place is very fancy"
    click_on 'Submit'
    click_on 'view all spaces'
    expect(page).to have_content 'Name: The Moon'
    expect(page).to have_content "Description: It's pretty rocky!"
    expect(page).to have_content 'Name: Buckingham Palace'
    expect(page).to have_content "Description: This place is very fancy"
  end

  scenario 'you can reach the page from the homepage' do
    visit '/makersbnb'
    click_on 'Add a space'
    expect(page).to have_content 'Add your space!'
  end

end