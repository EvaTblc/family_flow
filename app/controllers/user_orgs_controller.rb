class UserOrgsController < ApplicationController

  def destroy
    user_org = UserOrg.find(params[:id])
    organization = Organization.find(user_org.organization_id)
    if user_org.destroy
      redirect_to organization_path(organization)
    end
  end

  def create
    @organization = Organization.find(params[:organization_id])
    @uo = UserOrg.new(user: User.find_by(username: params[:user_org][:user]))
    @uo.organization = @organization
    if @uo.save!
      redirect_to organization_path(@organization)
    else
      redirect_to root_path
    end
  end
end
