# Write your code here
require 'json'
require 'open-uri'
require 'net/http'

class GetRequester
    def initialize(url)
        @URL = url
    end

    def get_response_body
        uri = URI.parse(@URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        hash = JSON.parse(self.get_response_body)
    end

end




























# class GetRequester
#     def initialize(url)
#         @URL = url
#     end

#     def get_response_body
#         uri = URI.parse(@URL)
#         response = Net::HTTP.get_response(uri)
#         response.body
#     end

#     def parse_json
#         response_hash = JSON.parse(self.get_response_body)
#     end
# end