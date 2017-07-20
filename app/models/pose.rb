class Pose < ApplicationRecord

	has_many :user_pose
	has_many :users, through: :user_pose

	has_many :comments

	belongs_to :category

	validates :image, presence: true

  	has_attached_file :image, styles: { :medium => "640x" }
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	
end
