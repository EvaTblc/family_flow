class TasksController < ApplicationController
  def index
    @tasks = Task.where(user: current_user)
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

end
