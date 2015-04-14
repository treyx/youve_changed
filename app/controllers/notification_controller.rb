class NotificationController < ApplicationController
  def create
    FriendMailer.notify(current_user, params[:email]).deliver_now
    flash[:notice] = "Successfully told your friend that they've changed."
    redirect_to root_url
  end
end
