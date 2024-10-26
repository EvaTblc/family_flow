class OrganizationsController < ApplicationController
  before_action :set_organization
  before_action :group_tasks
  def new
    @organization = Organization.new
  end

  def create
    orga = Organization.new(params_org)
    orga.password = BCrypt::Password.create(params_org[:password])
    redirect_to organization_path(orga) if orga.save!
  end

  def show
    @uo = UserOrg.new
    users = User.all.reject { |user| user == User.find_by(email: current_user.email) }
    @username = []
    users.each { |user| @username << user.username }

    @usersorgs = UserOrg.all.where(organization: @organization)
  end

  def destroy
    users_orgz = User_orgs.where(organization: @organization)
    users_orgz.each(&:delete)
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
    @organization.creator.tasks.each { |task| @tasks << task }
    @organization.tasks.each { |task| @tasks << task }
  end

  def params_org
    params.require(:organization).permit(:name, :password)
  end
end
