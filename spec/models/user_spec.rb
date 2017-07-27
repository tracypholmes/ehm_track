require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with a name, username, email, and password' do
    user = User.new(
      name: 'Pat Richols',
      username: 'prichols',
      email: 'prichols@prichols.me',
      password_digest: 'patsword',
    )
    expect(user).to be_valid
  end
  
  it 'is invalid without a name' do
    user = User.new(name: nil)
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end
  
  it 'is invalid without a username' do
    user = User.new(username: nil)
    user.valid?
    expect(user.errors[:username]).to include("can't be blank!")
  end
  
  it 'is invalid without an email address' do
    user = User.new(email: "jjj$me.com")
    expect(user).to be_valid
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
    user.valid?
    expect(user.errors[:email]).to include("oops - this has already been taken")
  end
  
    

  # it "returns a user's full name as a string"
end
