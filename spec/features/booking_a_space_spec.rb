feature "Booking a space" do 
  scenario "when a user wants to book a space" do 
    visit '/makersbnb/add'
    fill_in 'Name', with: 'Buckingham Palace'
    click_on 'Submit'
    visit('/makersbnb/spaces')
    click_button('requests')
    expect(page).to have_content "Your booking request is now confirmed"
  end 

  # needs more tests to cover the full functionality of making a booking request
end 
