require 'space'

RSpec.describe Space do
  it 'adds a space with a name and description' do
    Space.add('The Moon', 'The Rockiest Place you could imagine...')
    expect(Space.show_most_recent_space).to eq ['The Moon', 'The Rockiest Place you could imagine...']
  end

  it 'adds a different space with a different name and description' do
    Space.add('The Sea', "It's very wet!")
    expect(Space.show_most_recent_space).to include('The Sea', "It's very wet!")
  end

  xit 'returns the multiple names when they have been added' do
    Space.add('The Sea')
    Space.add('The Moon')
    expect(Space.show_most_recent_space).to eq 'The Moon'
    expect(Space.names).to eq ['The Sea', 'The Moon']
  end
end
