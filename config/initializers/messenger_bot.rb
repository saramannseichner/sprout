Messenger::Bot.config do |config|
  config.access_token = ENV['FB_PAGE_KEY']
  config.validation_token = ENV['FB_PAGE_KEY']
  config.secret_token = ENV['FB_SECRET']
end
