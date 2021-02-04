class Post < ApplicationRecord
    attr_accessible :content
    belongs_to :user

    validates :user_id, presence: true
    validates :content, presence: true

    default_scope order: 'posts.created_at DESC'

end
