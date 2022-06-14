feature "Booking a space" do 
  scenario "when a user wants to book a space" do 
    visit('/makersbnb/spaces')
    click_button('requests')

    expect(page).to have_content "Your booking is now confirmed"
  end 
end 