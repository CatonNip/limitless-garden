helpers do
  def send_sms_notification(phone_number, giphy_URL)
    client = Twilio::REST::Client.new ENV['TWILIO_SID'], ENV['TWILIO_AUTH_TOKEN']
    send_sms(client, phone_number, giphy_URL)
  end

  def send_sms(client,phone_number,giphy_URL)
    twilio_number = ENV['TWILIO_PHONE_NUMBER']
    message = client.account.messages.create(
    from: twilio_number,
    to: phone_number,
    body: "OH THE HUE-MANATEE!!!!!!!",
    media_url: giphy_URL
    )
    puts "An sms notifying the last application error was "\
    "sent to #{message.to[0...-4] + "******"}"
  end

  # private_class_method :send_sms
end