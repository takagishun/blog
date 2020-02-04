class Post < ApplicationRecord
	mount_uploader :image, ImageUploader
	validates :url, presence: true

	def to_param
		url
	end
end
