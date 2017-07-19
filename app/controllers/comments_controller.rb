class CommentsController < ApplicationController

	def index
		@comment = Comment.all
	end
	
	def show
	end

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.create(comment_params)
		@comment.user_id = current_user.id
		@comment.save
		redirect_to poses_path
	end


	def edit
	end

	def update
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		
	end

	private
		def comment_params
	      params.require(:comment).permit(:name, :comment, :pose_id)
	    end

end
