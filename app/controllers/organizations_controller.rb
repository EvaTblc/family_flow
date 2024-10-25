class OrganizationsController < ApplicationController
  def new
    @organization = Organization.new
  end

  def create
    orga = Organization.new(params_org)
    orga.password = BCrypt::Password.create(params_org[:password])
    redirect_to organization_path(orga) if orga.save!
  end

  def show
    @organization = Organization.find(params[:id])
    @uo = UserOrg.new

    @users = User.all
  end

  def destroy
    @organization = Organization.find(params[:id])
    users_orgz = User_orgs.where(organization: @organization)
    users_orgz.each(&:delete)
    if @organization.delete
      redirect_to root_path
    end
  end

  private

  def params_org
    params.require(:organization).permit(:name, :password)
  end
end
