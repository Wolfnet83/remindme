class AlertMailer < ActionMailer::Base
  default from: "remindme@example.org", subject: "Alert from RemindMe Team"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.alert_mailer.alert_mail.subject
  #
  def alert_mail(alert)
    @greeting = "Hi"
    @alert = alert
    mail to: alert.user.email
  end
end
