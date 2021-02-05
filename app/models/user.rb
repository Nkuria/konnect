class User < ApplicationRecord
    mount_uploader :Photo, ImageUploader
    mount_uploader :Coverimage, ImageUploader
    has_many :posts, dependent: :destroy
    has_many :followings, foreign_key: "follower_id", dependent: :destroy
    has_many :followed_users, through: :followings, source: :followed
    has_many :reverse_followings, foreign_key: "followed_id", class_name: "Following", dependent: :destroy
    has_many :followers, through: :reverse_followings, source: :follower


    validates_uniqueness_of :Username
    validates :Username, presence: true
    validates :Fullname, presence: true
    validates :Photo, presence: true
    validates :Coverimage, presence: true

    scope :who_to_follow, lambda { |user_id|
        where(
          "id NOT IN ( SELECT followed_id
FROM followings
WHERE follower_id = ?
)",
          user_id
        )
      }

    def following?(user2)
        followings.find_by_followed_id(user2.id)
    end

    def follow!(user2)
        followings.create!(followed_id: user2.id)
    end
    def unfollow!(user2)
        followings.find_by_followed_id(user2.id).destroy
    end
    
end
