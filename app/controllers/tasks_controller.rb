class TasksController < ApplicationController
  # before_action :set_task, except: [:index]
  before_action :set_org, only: [:index, :create]
  def index
    @tasks = Task.where(organization: @organization)
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(params_tasks)
    @task.organization = @organization
    @task.end = params_tasks[:start].split(' au ')[1]
    if @task.save!
      redirect_to organization_tasks_path(organization: @organization)
    end
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

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def set_org
    @organization = Organization.find(params[:organization_id])
  end

  def params_tasks
    params.require(:task).permit(:category, :title, :description, :start, :end, :priority, :status, :recurrence)
  end
end
