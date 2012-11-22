class AlertMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.alert_mailer.alert_mail.subject
  #
  def alert_mail(user)
    @greeting = "Hi"

  #  mail to: "andrey.volcov@rusnac.md"
    mail to: user
  end
end
