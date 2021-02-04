class Post < ApplicationRecord
    attr_accessible :content
    belongs_to :user

    validates :user_id, presence: true

end
