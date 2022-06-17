require 'user'

RSpec.describe User do
  it 'takes it user details and returns the name' do
    User.create('Gerry', 'gerry2', 'gerry@theger.co', 'sugar')
    expect(User.details).to eq ['Gerry', 'gerry2', 'gerry@theger.co']
  end

  it 'takes different user details and returns the different name' do
    User.create('Sandy', 'sansan', 'sandy@theger.co', 'sugarpie')
    expect(User.details).to eq ['Sandy', 'sansan', 'sandy@theger.co']
  end
end
