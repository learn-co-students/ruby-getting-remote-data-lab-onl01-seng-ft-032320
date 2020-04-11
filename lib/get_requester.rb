require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  attr_accessor :url

  def initialize(string_url)
    @url = string_url
  end


  def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    responses = self.get_response_body
    JSON.parse(responses)
  end

end
