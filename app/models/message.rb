class Message < ApplicationRecord
  belongs_to :organization
  belongs_to :user

  broadcasts_refreshes

  after_create_commit :broadcast_message

  after_create_commit -> {
      broadcast_replace_to(
        "organization_#{organization.id}_latest_message",
        partial: "messages/latest_message",
        locals: { message: self },
        target: "latest-message"
      )
    }

  private

  def broadcast_message
    broadcast_append_to "organization_#{organization.id}_messages",
                        partial: "messages/message",
                        target: "messages",
                        locals: { message: self, user: user }
  end
end
