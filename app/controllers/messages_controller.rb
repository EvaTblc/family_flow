class MessagesController < ApplicationController
  def new
    @organization = Organization.find(params[:organization_id])
    @message = Message.new
  end

  def create
    @organization = Organization.find(params[:organization_id])
    @message = Message.new(message_params)
    @message.organization = @organization
    @message.user = current_user
    if @message.save
      redirect_to new_organization_message_path(@organization)
    else
      render "messages/new", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
