class Pose < ApplicationRecord

	has_many :user_pose
	has_many :users, through: :user_pose

	has_many :comments

	mount_uploader :image, ImageUploader


	
end
