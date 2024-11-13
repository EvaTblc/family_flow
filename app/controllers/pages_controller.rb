class PagesController < ApplicationController
  def home
    @organization = Organization.find_by(creator: current_user)
    @member_organization = Organization.find_by(creator: current_user) || Organization.find(current_user.user_orgs.first.organization_id)
  end
end
