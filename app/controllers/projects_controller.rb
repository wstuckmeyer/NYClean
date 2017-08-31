class ProjectsController < ApplicationController
	def index
		@projects = Project.all.order("created_at DESC")
	end

	# def new
	# 	@projects = Projects.all
	# end

	# def show

	# end

	# def create
	# 	@current_user = current_user.id
	# 	@projects = Project.create(name: params[:project][:name], description: params[:project][:description], date: params[:project][:date], photo: params[:project][:photo], people: params[:project][:people] user_id: @current_user)

	# 	if @project.save
	# 		redirect_to root_path
	# 	else
	# 		render 'new'
	# 	end
	# end

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
