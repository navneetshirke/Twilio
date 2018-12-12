class TwilioTextMessenger
  attr_reader :message

  def initialize(message)
    @message = message
  end

  def call
    debugger
    client = Twilio::REST::Client.new
    client.messages.create({
     from: '+15405088701',
     to:   '+918770926573',
     body: 'Hello there! This is a test'
     })
  end
end
