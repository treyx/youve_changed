class NotifierJob < ActiveJob::Base
  queue_as :default

  def perform(sener, recipient_email)
    FriendMailer.notify(current_user, params[:email]).deliver_now
  end
end
