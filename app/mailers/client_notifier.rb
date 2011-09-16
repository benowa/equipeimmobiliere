class ClientNotifier < ActionMailer::Base
  default from: "benowa.desu@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.client_notifier.summary.subject
  #
  def summary(client)

    @client = client
    @greeting = "Hi, here is a pdf"
    mail to: client.email, subject: 'Summary Confirmation'




  end
end
