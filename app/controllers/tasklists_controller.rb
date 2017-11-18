class TasklistsController < ApplicationController

	def index
		@tasklists = Tasklist.all
	end


	def new

		@tasklist = Tasklist.new

	end

	def create 

		tasklist_params = params[:tasklist].permit(:title, :description)
		@tasklist = Tasklist.new(tasklist_params)
		if @tasklist.save
			flash[:success] = "Task created successfully"
			redirect_to tasklists_path
		else
			flash.now[:danger] = "Task was invalid"
            render 'new'
		end
	end


	def edit
		@tasklist = Tasklist.find(params[:id])
	end


	def update
		tasklist_params = params[:tasklist].permit(:title, :description)
		@tasklist = Tasklist.find(params[:id])
		if @tasklist.update(tasklist_params)
			flash[:success] = "Post updated successfully"
			redirect_to tasklist_path(id: @tasklist.id)
		else
			flash.now[:danger] = "Post was invalid"
            render :edit
		end
	
	end


	def show
		@tasklist = Tasklist.find(params[:id])
		@task = Task.new
	
	end



	def destroy
		@tasklist = Tasklist.find(params[:id])
		@tasklist.destroy
		redirect_to tasklists_path
	end

end
 