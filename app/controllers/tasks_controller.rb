class TasksController < ApplicationController

  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.new(task_params)
    if @task.save
      flash[:notice] = "Task successfully added!"
      respond_to do |format|
        format.html { redirect_to list_path(@task.list) }
        format.js
      end
    else
      render :new
    end
  end

end
