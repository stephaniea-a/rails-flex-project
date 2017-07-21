class PosesController < ApplicationController
	before_action :set_upload, only: [:show, :edit, :update, :destroy]

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
		redirect_to poses_path
	end

	def edit 
		@pose = Pose.find(params[:id])
	end

	def update
		@pose = Pose.find(params[:id])
		@pose.update(pose_params)
		redirect_to poses_path
	end

	def destroy
		@pose = Pose.find(params[:id])
		@pose.destroy
		redirect_to poses_path
	end

	private 
		def set_upload
	      @pose = Pose.find(params[:id])
	    end
		def pose_params
			params.require(:pose).permit(:name, :sanskrit_name, :image, :description, :difficulty_level)
		end

end
