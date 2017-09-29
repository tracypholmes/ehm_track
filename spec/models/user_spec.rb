require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with a username, email, and password' do
    user = User.new(
      username: 'prichols',
      email: 'prichols@prichols.me',
      password: 'patsword'
    )
    expect(user).to be_valid
  end

  it 'is invalid without a username' do
    user = User.new(username: nil)
    user.valid?
    expect(user).to_not be_valid
  end

  it 'is invalid without an email address' do
    user = User.new(email: nil)
    expect(user).to_not be_valid
  end

  it 'is invalid with a duplicate email address' do
    User.create(
      username: 'prichols',
      email: 'prichols@prichols.me'
    )
    user = User.new(
      username: 'ptrichols',
      email: 'prichols@prichols.me'
    )
    expect(user).to_not be_valid
  end
end