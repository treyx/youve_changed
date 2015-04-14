require_relative "../test_helper"

class FriendMailerTest < ActionMailer::TestCase
  def test_it_sends_email
    sender = User.create(name: "Richard", email: "richard@example.com")
    FriendMailer.notify(sender, "test@example.com").deliver_now

    email = ActionMailer::Base.deliveries.last

    assert_equal "test@example.com", email.to.first
    assert_equal "Richard says you've changed", email.subject
  end
end
