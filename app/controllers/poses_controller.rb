class PosesController < ApplicationController

	def index
		@poses = Pose.all
	end
	
	def new
		@pose = Pose.new
	end

	def show
	end

	def create
	end

	def edit 
	end

	def update
	end

	def destroy
	end

end
