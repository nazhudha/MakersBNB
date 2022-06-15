feature "Booking a space" do 
  xscenario "when a user wants to book a space" do 
    visit('/makersbnb/spaces')
    click_button('requests')
# Changed from 'click_button' to 'click_link' as there is no button in spaces.erb, just a href.
    expect(page).to have_content "Your booking is now confirmed"
  end 
end 

