RSpec.describe Space do
  context ".all" do
    it "Returns all spaces" do
      expect(Space.all).to include("Happy House, A really cosy space, where you can relax, $24.00")
      expect(Space.all).to include("Buckingham Palace, The biggest house in the world, $100.00")
   end
  end
end

[1, 2, 3, 4]
"abcde"