class PosesController < ApplicationController

	def index
		@poses = Pose.all
	end
	
	def new
		@pose = Pose.new
	end

	def show
		@pose = Pose.find(params[:id])
	end

	def create
		@pose = Pose.create(pose_params)
		@pose.save
		redirect_to @pose
	end

	def edit 
		@pose = Pose.find(params[:id])
	end

	def update
		@pose = Pose.find(params[:id])
		@pose.update(pose_params)
		redirect_to @pose
	end

	def destroy
		@pose = Pose.find(params[:id])
		@pose.user_id = current_user.id
		@pose.destroy
		redirect_to poses_path
	end

	private 
		def pose_params
			params.require(:pose).permit(:name, :sanskrit_name, :image, :description, :difficulty_level)
		end

end
