feature "Booking a space" do 
  scenario "User can book a space and receives a confirmation" do 
    visit('/makersbnb/spaces')
    # test clicking the first requests button and not all the requests buttons 
    click_button('requests', match: :first) 
    expect(page).to have_content "Your booking request is now confirmed"
  end 

  context "After a user has booked a space" do 
    scenario "User receives an automatic approval message" do 
      visit('/makersbnb/approved')
      click_button('Ok')
      expect(page).to have_content "Your booking has now been approved"
    end 
  end 
end 
