class Pose < ApplicationRecord

	has_many :user_pose
	has_many :users, through: :user_pose

	has_many :comments

	belongs_to :category

	
end
