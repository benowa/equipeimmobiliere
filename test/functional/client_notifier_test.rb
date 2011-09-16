require 'test_helper'

class ClientNotifierTest < ActionMailer::TestCase
  test "summary" do
    mail = ClientNotifier.summary
    assert_equal "Summary", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
