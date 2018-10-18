class Image < ApplicationRecord
belongs_to :return
mount_uploader :image, ImageUploader

end
