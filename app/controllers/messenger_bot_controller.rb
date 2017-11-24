class MessengerBotController < ActionController::Base
  #skip_before_action :authenticate_user!
  #skip_before_action :verify_authenticity_token


  def message(event, sender)
   # profile = sender.get_profile(field) # default field [:locale, :timezone, :gender, :first_name, :last_name, :profile_pic]
    # sender.reply({ text: "Reply: #{event['message']['text']}" })
    msg = event["message"]["text"]
    # sender.reply(text: 'Hello, human!')
    # sender.reply(
    #   attachment: {
    #     type: 'template',
    #     payload: {
    #       template_type: 'button',
    #       text: 'Human, do you like me?',
    #       buttons: [
    #         { type: 'postback', title: 'Yes', payload: 'HARMLESS' },
    #         { type: 'postback', title: 'No', payload: 'EXTERMINATE' }
    #       ]
    #     }
    #   }
    # )
    # sender.reply(
    #   attachment: {
    #     type: 'image',
    #     payload: {
    #       url: 'https://www.smashingmagazine.com/wp-content/uploads/2015/06/10-dithering-opt.jpg'
    #     }
    #   }
    # )
    sender.reply({text: "♥️ from sprout"})
  end

  def optin(event, sender)
    user_id = event["optin"]["ref"].to_i
    user = find_or_create_user(sender.sender_id, user_id)
    plants = find_user_plants(user)
    plant = plants.first
    plant_url = Cloudinary::Utils.cloudinary_url(plant.photo.public_id ,:width => 120, :height => 170, :crop => :fill)

    sender.reply(text: "Hello, #{user.first_name}! sprout is here to help you make sure you won't kill your new #{plant.common_name} :)")
    sender.reply(
      attachment: {
        type: 'image',
        payload: {
          url: plant_url
        }
      }
    )
    # sender.reply(
    #   attachment: {
    #     type: 'template',
    #     payload: {
    #       template_type: 'button',
    #       text: 'What do you say, would you like our help?',
    #       buttons: [
    #         { type: 'postback', title: 'Yes', payload: 'callback_yes' },
    #         { type: 'postback', title: 'No', payload: 'callback_no' }
    #       ]
    #     }
    #   }
    # )

    # if plants.size == 1
      quickreply = QuickReplyTemplate.new("What do you say, would you like our help?")
      quickreply.add_postback('Yes', 'callback_yes')
      quickreply.add_postback('No', 'callback_no')
    # else
    #   quickreply = QuickReplyTemplate.new("Hi #{user.first_name}, would you like us to remind you when to water your new plants?")
    #   quickreply.add_postback('Yes', 'callback_yes')
    #   quickreply.add_postback('No', 'callback_no')
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
        sender.reply({
          text: "Great, we'll send you water reminders #{plants.first.show_water_level.downcase} once your #{plants.first.common_name} has been delivered.",
          })
      else
        sender.reply({
          text: "Great, we'll send you water reminders #{plants.first.show_water_level.downcase} once your #{plants.first.common_name} have been delivered.",
          })
      end
    elsif payload == 'callback_no'
      sender.reply({text: "Ok, maybe next time :)"})
    else
      sender.reply({text: "♥️ from sprout"})
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
