require 'space'

RSpec.describe Space do
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
