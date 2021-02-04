class Post < ApplicationRecord

    belongs_to :user

    validates :user_id, presence: true
    validates :content, presence: true

    # default_scope  {'posts.created_at DESC'}

    # default_scope order: 'posts.created_at DESC'


end
