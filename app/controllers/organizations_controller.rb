class OrganizationsController < ApplicationController
  before_action :set_organization, except: [:index]
  before_action :group_tasks, except: [:index]

  def new
    @organization = Organization.new
  end

  def create
    orga = Organization.new(params_org)
    orga.password = BCrypt::Password.create(params_org[:password])
    redirect_to organization_path(orga) if orga.save!
  end

  def show

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
    params.require(:organization).permit(:name, :address)
  end
end
