class PosesController < ApplicationController

	def index
		@poses = Pose.all
	end
	
	def new
		@pose = Pose.new
		@categories = Category.all.map{|c| [c.category, c.id]}
	end

	def show
		@pose = Pose.find(params[:id])
	end

	def create
		@pose = Pose.create(pose_params)
		@pose.category_id = params[:category_id]
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
		@pose.destroy
		redirect_to poses_path
	end

	private 
		def pose_params
			params.require(:pose).permit(:name, :sanskrit_name, :image, :description, :difficulty_level, :category_id)
		end

end
