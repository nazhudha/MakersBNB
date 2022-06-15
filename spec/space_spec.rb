require 'space'

RSpec.describe Space do
  it 'adds a space with a name' do
    Space.add('The Moon')
    expect(Space.show_most_recent_space).to include('The Moon')
  end

  it 'adds a different space with a different name' do
    Space.add('The Sea')
    expect(Space.show_most_recent_space).to include('The Sea')
  end

  it 'returns the multiple names when they have been added' do
    Space.add('The Sea')
    Space.add('The Moon')
    expect(Space.show_most_recent_space).to eq 'The Moon'
    expect(Space.names).to eq ['The Sea', 'The Moon']
  end
end
