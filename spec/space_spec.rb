RSpec.describe Space do
  context ".all" do
    it "Returns all spaces" do
      expect(Space.all).to eq [["Happy House", "A really cosy space, where you can relax", "$24.00"], ["Buckingham Palace", "The biggest house in the world", "$100.00"]]
    end
  end
end
