require 'space'

RSpec.describe Space do
  context ".all" do
    # this test needs to be modified to reflect the all method
    # add method needs to be able to add a price
    # once the add method is complete, we can use the add method to give Space.all its eq value
    it "Returns all spaces" do
      expect(Space.all).to eq [["Happy House", "A really cosy space, where you can relax", "$24.00"], ["Buckingham Palace", "The biggest house in the world", "$100.00"]]
    end

  it 'adds a space with a name and description' do
    Space.add('The Moon', 'The Rockiest Place you could imagine...')
    expect(Space.show_most_recent_space).to eq ['The Moon', 'The Rockiest Place you could imagine...']
  end

  it 'adds a different space with a different name and description' do
    Space.add('The Sea', "It's very wet!")
    expect(Space.show_most_recent_space).to eq ['The Sea', "It's very wet!"]
  end

  it 'returns the multiple names and descriptions when they have been added' do
    Space.add('The Sea', "It's very wet!")
    Space.add('The Moon', 'The Rockiest Place you could imagine...')
    expect(Space.show_most_recent_space).to eq ['The Moon', 'The Rockiest Place you could imagine...']
    expect(Space.all).to eq [['The Sea', "It's very wet!"], ['The Moon', 'The Rockiest Place you could imagine...']]
  end
end
