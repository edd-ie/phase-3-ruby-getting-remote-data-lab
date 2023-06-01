# Write your code here
require 'net/http'
require 'json'
require 'open-uri'

class GetRequester 
    def initialize(url)
        @url = url
    end
    attr_accessor :url

    def get_response_body 
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response.body
    end
    def parse_json
        JSON.parse(get_response_body)
    end
end

get_requester = GetRequester.new('https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json')
pp get_requester.parse_json
