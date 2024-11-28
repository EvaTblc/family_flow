class Message < ApplicationRecord
  belongs_to :organization
  belongs_to :user

  after_create_commit :broadcast_message

  private

  def broadcast_message
    broadcast_append_to "organization_#{organization.id}_messages",
                        partial: "messages/message",
                        target: "messages",
                        locals: { message: self, user: user }
  end

end
