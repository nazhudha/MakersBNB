feature "login page" do
  context "basic connection server/page connection test" do
    it "Returns a basic text message initially to confirm server connection" do
      visit('/makersbnb/login')
      expect(page).to have_content "Login page"
    end
  end
end
