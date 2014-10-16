class Read
  attr_accessor :from

  def initialize (from)
    account_sid = 'AC58fc50cc9a27790076be17cbf453e02b' 
    auth_token = 'a341b361243ed61b8fbbb5e5655f0c9c' 
 
    client = Twilio::REST::Client.new account_sid, auth_token 
 
    client.account.messages.list({ from: from }).each_with_index do |message, i|
      puts "Message #{i + 1} from #{message.from} on #{message.date_sent}: #{message.body}" 
    end
  end
end