class ProjectsController < ApplicationController
	def index
		@projects = Project.all.order("created_at DESC")
	end

	def new
		@projects = Project.new
	end

	def show
		@projects = Project.all
	end

	def create
		@current_user = current_user.id
		@projects = Project.create(name: params[:project][:name], description: params[:project][:description], date: params[:project][:date], photos: params[:project][:photos], location: params[:project][:location], people: params[:project][:people], user_id: current_user)

		redirect_to project_path
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
