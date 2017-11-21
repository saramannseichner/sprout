class MessengerBotController < ActionController::Base
  # skip_before_action :authenticate_user!
  # skip_before_action :verify_authenticity_token

  def message(event, sender)
   # profile = sender.get_profile(field) # default field [:locale, :timezone, :gender, :first_name, :last_name, :profile_pic]
    # sender.reply({ text: "Reply: #{event['message']['text']}" })
    msg = event["message"]["text"]
    quickreply = QuickReplyTemplate.new("Would you like us to remind you when you water your plant?")

    quickreply.add_postback('Yes', 'callback_yes')
    quickreply.add_postback('No', 'callback_no')

    sender.reply(quickreply.get_message)
  end


  def postback(event, sender)
    payload = event["postback"]["payload"]
    case payload
    when :something
    #ex: process sender.reply({text: "button click event!"})
    end
  end
end
