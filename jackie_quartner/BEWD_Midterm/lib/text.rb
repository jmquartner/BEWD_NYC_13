class Text
  attr_accessor :to, :body

  def initialize(to, body)
    account_sid = 'AC58fc50cc9a27790076be17cbf453e02b'
    auth_token = 'a341b361243ed61b8fbbb5e5655f0c9c'
    client = Twilio::REST::Client.new account_sid, auth_token

    client.account.messages.create({
      :from => "+19146185311",
      :to => to,
      :body => body})
  end
end
