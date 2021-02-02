class User < ApplicationRecord
    mount_uploader :Photo, ImageUploader
    mount_uploader :Coverimage, ImageUploader
    validates_uniqueness_of :Username
    validates_uniqueness_of :email
end
