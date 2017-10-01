require 'httparty'

module Request
  def post(method, body)
    data = HTTParty.post("https://api.telegra.ph/#{method}", body: body).parsed_response
    return data['result'] if data['result']
    data
  end
end
