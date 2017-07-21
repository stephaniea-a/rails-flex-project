class CommentsController < ApplicationController

	def index
		@comment = Comment.all
	end
	
	def show
		@comment = Comment.find(params[:id])
	end

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.create(comment_params)
		@comment.user_id = current_user.id
		@comment.save
		redirect_to pose_path(@comment.pose)
	end


	def edit
		@comment = Comment.find(params[:id])
		if current_user.id != @comment.user_id
			redirect_to pose_path(@comment.pose)
		end
	end

	def update
		@comment = Comment.find(params[:id])
		@comment.update(comment_params)
		redirect_to pose_path(@comment.pose)
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to pose_path(@comment.pose)
		
	end

	private
		def comment_params
	      params.require(:comment).permit(:name, :comment, :pose_id)
	    end

	    def find_pose
	    	@pose = Pose.find(params[:pose_id])
	    end

end
