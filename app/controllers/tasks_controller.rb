class TasksController < ApplicationController
    def new
        @tasklist = Tasklist.find(params[:tasklist_id])
        @task = Task.new
    end    

    def create
        tasklist_params = params[:task].permit(:title, :description, :priority, :status)
        @tasklist = Tasklist.find(params[:tasklist_id])
        
        @task = @tasklist.tasks.build(tasklist_params)

        # @task = Task.new(tasklist_params)
        # @task.tasklist_id = params[:tasklist_id]        
        if @task.save
            flash[:success] = "Task created successfully"
            redirect_to tasklist_path(id: @tasklist.id)
        else
            flash.now[:danger] = "Task was invalid"
            render 'tasklists/show'
            # need to understand render
        end
    end   





     def edit
        @task = Task.find(params[:id])
        @tasklist = Tasklist.find(params[:tasklist_id])
    end    

    def destroy
        @task = Task.find(params[:id])
        @tasklist = Tasklist.find(params[:tasklist_id])
        @task.destroy
        redirect_to tasklist_path(@tasklist.id)
    end    

    def update
        tasklist_params = params[:task].permit(:title, :description, :priority, :status)
        @task = Task.find(params[:id])
        @tasklist = Tasklist.find(params[:tasklist_id])        
        if @task.update(tasklist_params)
            flash[:success] = "Post updated successfully"
            redirect_to tasklist_path(id: @tasklist.id)            
        else
            flash.now[:danger] = "Post was invalid"
            render :edit
        end    
    end
end



