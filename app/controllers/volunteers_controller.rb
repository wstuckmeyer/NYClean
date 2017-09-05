class VolunteersController < ApplicationController
	def new
		@vol = Volunteer.new

	end
	def create
		@user = User.find(current_user.id)
		puts @user
		@vol = Volunteer.create(volunteer_id: @user.id, project_id: params[:volunteer][:project_id]);
		@vol.save!
		puts params.inspect
		redirect_to project_path(params[:volunteer][:project_id])
		

	end
end
