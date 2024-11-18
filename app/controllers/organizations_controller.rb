class OrganizationsController < ApplicationController
  before_action :set_organization, except: [:index]
  before_action :group_tasks, except: [:index]

  def index
    @organizations = current_user.organizations
  end
  def new
    @organization = Organization.new
  end

  def create
    orga = Organization.new(params_org)
    orga.password = BCrypt::Password.create(params_org[:password])
    redirect_to organization_path(orga) if orga.save!
  end

  def show
    users = User.all.reject { |user| user == User.find_by(email: current_user.email) }
    @username = []
    users.each { |user| @username << user.username }

  end

  def destroy
    if @organization.delete
      redirect_to root_path
    end
  end

  def update
    if @organization.update(params_org)
      redirect_to organization_path(@organization)
    else
      redirect_to organization_path(@organization)
      # FAUT CHANGER CA AVEC UNE ALERT
    end
  end

  private

  def set_organization
    @organization = Organization.find(params[:id])
  end

  def group_tasks
    @tasks = []
    @organization.tasks.each { |task| @tasks << task }
  end

  def params_org
    params.require(:organization).permit(:name, :password)
  end
end
