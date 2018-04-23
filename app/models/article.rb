class Article < ApplicationRecord
	
	has_many :comments, dependent: :destroy

	validates :title, presence: true, uniqueness: true

	mount_uploader :banner_image,ImageUploader



end
