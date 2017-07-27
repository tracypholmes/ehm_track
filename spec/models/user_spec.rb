require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with a name, username, email, and password' do
    user = User.new(
      name: 'Pat Richols',
      username: 'prichols',
      email: 'prichols@prichols.me',
      password: 'patsword',
    )
    expect(user).to be_valid
  end

  it 'is invalid without a name' do
    user = User.new(name: nil)
    user.valid?
    expect(user).to_not be_valid
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
      name: 'Pat Richols',
      username: 'prichols',
      email: 'prichols@prichols.me',
      password_digest: 'patsword',
    )
    user = User.new(
      name: 'Paul Richols',
      username: 'prichols',
      email: 'prichols@prichols.me',
      password_digest: 'patsword',
    )
    expect(user).to_not be_valid
  end



  # it "returns a user's full name as a string"
end
