class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def new
		@project = Project.new
	end

	def show

		def progress
  			Volunteers.where(project_id: params[:id]) / params[:id] * 100
		end

		@projects = Project.find_by_id(params[:id])

	end

	def create
		@current_user = current_user.id

		@projects = Project.create(name: params[:project][:name], description: params[:project][:description], date: params[:project][:date], photos: params[:project][:photo], location: params[:project][:location], people: params[:project][:people], user_id: current_user)
		redirect_to @projects
	end

	# def update
	# 	if project.update(project_params)
	# 		redirect_to project_path(@project)
	# end

	# def destroy
	# 	@project.destroy
	# 	redirect_to root_path
	# end

	# private

	# def project_params
	# 	params.require(:project).permit(:name, :description, :date, :photo, :people, :user_id)
	# end


end
