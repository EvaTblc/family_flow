# To deliver this notification:
#
# NewCommentNotifier.with(record: @post, message: "New post").deliver(User.all)

class NewCommentNotifier < Noticed::Event
  deliver_by :action_cable do |config|
    config.channel = "NotificationsChannel"
    config.stream = :some_stream
  end

  deliver_by :email do |config|
    config.mailer = "CommentMailer"
    config.if = -> { !!recipient.preferences[:email] }
  end

  # bulk_deliver_by :discord do |config|
  #   config.url = "https://discord.com/xyz/xyz/123"
  #   config.json = -> {
  #     {
  #       message: message,
  #       channel: :general
  #     }
  #   }
  # end

  notification_methods do
    # I18n helpers
    def message
      t(".message")
    end

    # URL helpers are accessible in notifications
    # Don't forget to set your default_url_options so Rails knows how to generate urls
    def url
      user_post_path(recipient, params[:post])
    end
  end
end
