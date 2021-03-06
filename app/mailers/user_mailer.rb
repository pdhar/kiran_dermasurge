class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.contact_us.subject
  #
  def contact_us(query)
    @query = query
    
    #mail to: "info@kirandermasurge.com", subject: @query.subject
    mail to: "pranav.dhar2@gmail.com", subject: @query.subject, cc: "info@kirandermasurge.com" , bcc: "pdhar@kirandermasurge.com"
  end
end
