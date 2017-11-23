class MessengerBotController < ApplicationController
  skip_before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

  def message(event, sender)
   # profile = sender.get_profile(field) # default field [:locale, :timezone, :gender, :first_name, :last_name, :profile_pic]
    # sender.reply({ text: "Reply: #{event['message']['text']}" })
    msg = event["message"]["text"]
    # plants = find_user_plants(user)
    # quickreply = QuickReplyTemplate.new("Hi #{user.first_name}, would you like us to remind you when you water your plant(s)?")

    # quickreply.add_postback('Yes', 'callback_yes')
    # quickreply.add_postback('No', 'callback_no')

    # sender.reply(quickreply.get_message)
    sender.reply({text: "♥️ from sprout"})
  end

  def optin(event, sender)
    user_id = event["optin"]["ref"].to_i
    user = find_or_create_user(sender.sender_id, user_id)
    plants = find_user_plants(user)

    if plants.size == 1
      quickreply = QuickReplyTemplate.new("Hi #{user.first_name}, would you like us to remind you when to water your new plant?")
      quickreply.add_postback('Yes', 'callback_yes')
      quickreply.add_postback('No', 'callback_no')
    else
      quickreply = QuickReplyTemplate.new("Hi #{user.first_name}, would you like us to remind you when to water your new plants?")
      quickreply.add_postback('Yes', 'callback_yes')
      quickreply.add_postback('No', 'callback_no')
    end

    # if plants.size == 1
    #  message_json = {
    #     "text": "Hi #{user.first_name}, let's set up some watering reminders for the plant you bought today."
    #     }
    #   SendRequest.send(message_json,sender.sender_id)
    # else
    #   message_json = {
    #     "text": "Hi #{user.first_name}, let's set up some watering reminders for the #{plants.size} plants you bought today."
    #     }
    #   SendRequest.send(message_json,sender.sender_id)
    # end
    message_json = quickreply.get_message
    SendRequest.send(message_json,sender.sender_id)
  end

  def postback(event, sender)
    user = find_or_create_user(sender.sender_id)
    plants = find_user_plants(user)

    payload = event["postback"]["payload"]

    if payload == 'callback_yes'
      if plants.size == 1
        sender.reply({text: "Awesome, we'll send you water reminders #{plants.first.show_water_level.downcase}"})
      end
    elsif payload == 'callback_no'
      sender.reply({text: "Ok, maybe next time :)"})
    end
  end

  private

  def find_or_create_user(sender_id, user_id = nil)
    if User.find_by(facebook_id: sender_id)
      User.find_by(facebook_id: sender_id)
    else
      user = User.find(user_id)
      user.facebook_id = sender_id
      user.save
      user
    end
  end

  def find_user_plants(user)
    last_order = user.orders.last
    last_order.plants
  end
end
