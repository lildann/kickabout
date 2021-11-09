require 'rubygems' 
require 'twilio-ruby'

module TwilioSms
  def self.send_text
    begin
      @twilio_client = Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN'])
      
      @twilio_client.api.account.messages.create(
      :from => ENV['TWILIO_NUM'],
      :to => ENV['PHONE_NUM'],
      :body=> "YOUR GAME IS CONFIRMED WOOHOO"
      )
    rescue Twilio::REST::TwilioError => e
       return e.message
    end
    return "send"
  end
end