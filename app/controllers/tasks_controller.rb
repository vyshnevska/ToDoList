class TasksController < ApplicationController
   def index
   @tasks = Task.all
  end
  
  def new
    @task = Task.new
  end
  def create
    @task = Task.new 
    if @task.update_attributes(params[:task])
      redirect_to tasks_path, notice: 'Task was successfully created.' 
    else
      render action: "new" 
    end
  end
  def edit
    @task = Task.find params[:id]
  end
  def update
      @task = Task.find(params[:id])
      if @task.update_attributes(params[:task])
        redirect_to tasks_path, notice: 'Task was successfully updated.' 
      else
        render action: "edit" 
      end
  end
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, notice: 'Task was successfully deleted.' 
  end
end
