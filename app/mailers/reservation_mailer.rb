class ReservationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.reservation_mailer.Mailer.subject
  #
  def Mailer
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  def booking_email(customer, host, reservation_id)
  	
  end
end
