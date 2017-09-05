class ProjectsController < ApplicationController
	before_action :find_project, only: [:show, :edit, :update, :destroy]


	def index
		@projects = Project.all
	end

	def new
		@project = Project.new
	end

	def show

		@projects = Project.find_by_id(params[:id])
	end

	def create
		@current_user = current_user.id

		@projects = Project.create(name: params[:project][:name], description: params[:project][:description], date: params[:project][:date], photos: params[:project][:photos], location: params[:project][:location], people: params[:project][:people], user_id: current_user, time: params[:project][:time])
		redirect_to @projects
	end

	def edit
		@projects = Project.find(params[:id])
	end


	def update
		@project = Project.find(params[:id])
		if @project.update(project_params)
			redirect_to project_path(@project)
		else
			render 'edit'
		end
	end

	def destroy
		
		@volunteers = Volunteer.where(project_id: params[:id])
		@volunteers.each do |t|
			t.delete
		end
		@project = Project.find(params[:id]).delete
		redirect_to user_path
	end

private

	def project_params
		params.require(:project).permit(:name, :description, :date, :photo, :people, :user_id)
	end

	def find_project
		@project = Project.find(params[:id])
	end
end
