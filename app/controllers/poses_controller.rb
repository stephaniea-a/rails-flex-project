class PosesController < ApplicationController

	def index
		@poses = Pose.all
	end
	
end
