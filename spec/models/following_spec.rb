require 'rails_helper'

RSpec.describe Following, type: :model do
  describe 'following methods' do
    it { should respond_to(:follower) }
    it { should respond_to(:followed) }
  end
end
