class VolunteersController < ApplicationController
	def new
		@vol = Volunteer.create(volunteer_id: current_user, project_id: params[:id]);
		redirect_to project_path
	end
end
