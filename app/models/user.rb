class User < ApplicationRecord
    mount_uploader :Photo, ImageUploader
    mount_uploader :Coverimage, ImageUploader
    has_many :posts


    validates_uniqueness_of :Username
    validates :Username, presence: true
    validates :Fullname, presence: true
    validates :Photo, presence: true
    validates :Coverimage, presence: true
    
end
