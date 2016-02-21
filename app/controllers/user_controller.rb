# encoding:uft-8

class UserController < ApplicationController

	#
	def project_users
		@project = Project.find(params[:project_id])
		@project_id = @project.project_id;
	end

	private

	def event_params
  		params.require(:user).permit(:name, :description)
	end

end
