class User < ApplicationRecord
    mount_uploader :Photo, ImageUploader
    mount_uploader :Coverimage, ImageUploader
    validates_uniqueness_of :Username
    validates :Username, presence: true
    validates :Fullname, presence: true
    validates :Photo, presence: true
    validates :Coverimage, presence: true
    
end
