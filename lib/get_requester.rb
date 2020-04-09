# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  
  
  def initialize(string_url)
    @string_url = string_url
  end
  
  def get_response_body
    uri = URI.parse(@string_url)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
  def parse_json
    objects = JSON.parse(self.get_response_body)
    objects.collect do |object|
    object
  end
  end
end