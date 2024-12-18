class OrganizationsController < ApplicationController
  before_action :set_organization, except: [:index, :create]
  # before_action :group_tasks, except: [:index, :create]

  def index
    @organizations = Organization.all
    @organization = Organization.new
  end

  def create
    orga = Organization.new(params_org)
    orga.creator = current_user
    orga.password = BCrypt::Password.create(params_org[:password])
    redirect_to organization_path(orga) if orga.save!
  end

  def show
    @message = Message.new
    @member = Member.new
    @task = Task.new
    @other_users = @organization.users.where.not(username: current_user.username)
    @messages_users = @organization.messages.where.not(user: current_user)
  end

  def destroy
    if @organization.delete
      redirect_to root_path
    end
  end

  def edit
  end

  def update
    if @organization.update(params_org)
      redirect_to organization_path(@organization)
    else
      render :show, status: :unprocessable_entity
    end
  end

  private

  def set_organization
    @organization = Organization.find(params[:id])
  end

  def group_tasks
    @tasks = @organization.tasks
  end

  def params_org
    params.require(:organization).permit(:name, :address, :password)
  end
end
