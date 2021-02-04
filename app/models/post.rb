class Post < ApplicationRecord
    attr_accessible :content
    validates :user_id, presence: true

end
