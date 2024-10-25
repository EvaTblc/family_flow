class UserOrganizationsController < ApplicationController

  def delete
    @organization = Organization.find(params[:organization_id])
    user_org = UserOrg.find_by(organization: @organization)
    if user_org.destroy
      redirect_to root_path
    end
  end

end
