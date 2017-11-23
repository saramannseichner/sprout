module SendRequest
  def self.send(message, sender_id)
    token = ENV['FB_PAGE_KEY']
    url = ENV['FB_URL']
    request_params =  {
      recipient: {id: sender_id},
      message: message,
      access_token: token
    }

    RestClient.post url, request_params.to_json, :content_type => :json, :accept => :json
  end
end
