class Project < ApplicationRecord
	belongs_to :user
	has_one :board
	has_many :volunteers
	has_many :users, through: :volunteers
	mount_uploader :photos, AvatarUploader
end
