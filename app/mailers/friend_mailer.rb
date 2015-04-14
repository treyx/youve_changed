class FriendMailer < ApplicationMailer
  def notify(sender, recipient_email)
    @sender = sender
    mail(to: recipient_email, subject: "#{sender.name} says you've changed")
  end
end
