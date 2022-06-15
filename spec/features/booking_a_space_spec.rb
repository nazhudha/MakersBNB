feature "Booking a space" do 
  scenario "when a user wants to book a space" do 
    visit('/makersbnb/spaces')
    #test clicking the first requests button and not all the requests buttons 
    click_button('requests', match: :first) 
    expect(page).to have_content "Your booking request is now confirmed"
  end 

  # needs more tests to cover the full functionality of making a booking request
end 
