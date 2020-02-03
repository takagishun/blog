class Post < ApplicationRecord
	mount_uploader :image, ImageUploader
	validates :url, presence: true
end
