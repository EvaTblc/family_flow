class MembersController < ApplicationController
  def create
    @user = User.find(params[:member][:user_id])
    @organization = Organization.find(params[:organization_id])

    if @user.organizations.count >= 3
      flash[:alert] = "L'utilisateur appartient déjà à 3 organisations."
      redirect_back(fallback_location: organization_path(@organization))
    else
      @member = Member.new(user: @user, organization: @organization)
      if @member.save
        flash[:notice] = "L'utilisateur a été ajouté à l'organisation avec succès."
        redirect_to @organization
      else
        flash[:alert] = @member.errors.full_messages.join(", ")
        redirect_back(fallback_location: root_path)
      end
    end
  end
end
