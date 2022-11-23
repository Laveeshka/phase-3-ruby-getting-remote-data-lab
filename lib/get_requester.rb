# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
    attr_accessor :url

    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    #convert JSON returned from 'get_response_body' into Ruby data structures
    def parse_json
        data = JSON.parse(self.get_response_body)
    end

end
