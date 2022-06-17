require 'user'

RSpec.describe User do
  it 'takes it user details and returns the name' do
    User.create('Gerry', 'gerry2', 'gerry@theger.co', 'sugar')
    expect(User.details).to eq ['Gerry', 'gerry2', 'gerry@theger.co']
  end
end
