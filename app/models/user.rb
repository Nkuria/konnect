class User < ApplicationRecord
    mount_uploader :Photo, ImageUploader
    mount_uploader :Coverimage, ImageUploader
end
