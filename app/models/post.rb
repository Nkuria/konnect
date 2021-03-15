class Post < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :content, presence: true

  def self.default_scope
    order('posts.created_at DESC')
  end

end
