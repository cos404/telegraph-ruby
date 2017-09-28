require 'httparty'

module Request
  def post(method, query)
    data = HTTParty.post("https://api.telegra.ph/#{method}", query: query).parsed_response
    return data['result'] if data['result']
    data
  end
end
