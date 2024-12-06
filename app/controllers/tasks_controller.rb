class TasksController < ApplicationController
  # before_action :set_task, except: [:index]
  def index
    @tasks = Task.where(user: current_user)
    @organization = current_user.organization
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(params_tasks)
      redirect_to task_path(@task)
    else
      redirect_to task_path(@task)
            # FAUT CHANGER CA AVEC UNE ALERT
    end
  end

  def create
    @task = Task.new(params_tasks)
    @task.user = current_user
    if @task.save!
      redirect_to tasks_path
    end
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def params_tasks
    params.require(:task).permit(:category, :title, :description, :start, :end, :priority, :status, :recurrence)
  end
end
