require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Associations' do
    it { should have_many(:posts) }

    it 'User should have many followers and followees' do
      should have_many(:followings)
    end
    it 'User can have many posts' do
      should have_many(:posts)
    end
  end
  describe 'relations' do
    it { should respond_to(:followings) }
    it { should respond_to(:followed_users) }
  end
end