class TasksController < ApplicationController
  def index
    @tasks = Task.where(user: current_user)
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(params_tasks)
    @task.user = current_user
    if @task.save!
      redirect_to tasks_path
    end
  end

  private

  def params_tasks
    params.require(:task).permit(:category, :title, :description, :start, :end, :priority, :status, :recurrence)
  end
end
