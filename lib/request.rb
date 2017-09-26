require 'httparty'

module Request
  def get(path)
    data = HTTParty.get('https://api.telegra.ph/' + path).parsed_response
    data['result']
  end

  def post(path)
    data = HTTParty.post('https://api.telegra.ph/' + path).parsed_response
    data['result']
  end
end
