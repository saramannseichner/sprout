class MessengerBotController < ActionController::Base
  # skip_before_action :authenticate_user!
  # skip_before_action :verify_authenticity_token

  def message(event, sender)
   # profile = sender.get_profile(field) # default field [:locale, :timezone, :gender, :first_name, :last_name, :profile_pic]
    # sender.reply({ text: "Reply: #{event['message']['text']}" })
    msg = event["message"]["text"]
    # sender_id = event["sender"]["id"].to_i
    # first_name = sender.get_profile[:body]["first_name"]
    # last_name = sender.get_profile[:body]["last_name"]
    # binding.pry
    # user = find_or_create_user(first_name, last_name, sender_id)
    # plants = find_user_plants(user)
    quickreply = QuickReplyTemplate.new("Would you like us to remind you when you water your plant(s)?")

    quickreply.add_postback('Yes', 'callback_yes')
    quickreply.add_postback('No', 'callback_no')

    sender.reply(quickreply.get_message)
  end


  def postback(event, sender)
    payload = event["postback"]["payload"]

    if payload == 'callback_yes'
      sender.reply({text: "Great, let's nickname your new friend?"})
    elsif payload == 'callback_no'
      sender.reply({text: "Ok, maybe next time :)"})
    end
  end

  private

  def find_or_create_user(first_name, last_name, sender_id)
    if User.find_by(facebook_id: sender_id)
      User.find_by(facebook_id: sender_id)
    else
      User.create(email: "#{sender_id}@fakeemail.com",first_name: first_name, last_name: last_name,password: sender_id,facebook_id: sender_id)
    end
  end

  def find_user_plants(user)
    last_order = user.orders.last
    last_order.plants
  end
end
