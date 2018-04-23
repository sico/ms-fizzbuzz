require 'fizzbuzz'
require 'GiphyClient'

class WelcomeController < ApplicationController
  # begin
  #   #Search Endpoint
  #   giphy = api_instance.gifs_search_get(api_key, q, opts)
  #   p giphy
  # rescue GiphyClient::ApiError => e
  #   puts "Exception when calling DefaultApi->gifs_search_get: #{e}"
  # end

  def index
    api_instance = GiphyClient::DefaultApi.new
    @api_instance = api_instance
    @api_key = "p9ZBCTuQsD9M1EoxaDoyeb7zS6oaX5JA"
    @opts = {
      limit: 25, # Integer | The maximum number of records to return.
      offset: 0, # Integer | An optional results offset. Defaults to 0.
      rating: "g", # String | Filters results by specified rating.
      lang: "en", # String | Specify default country for regional content; use a 2-letter ISO 639-1 country code.
      fmt: "json" # String | Used to indicate the expected response format. Default is Json.
    }



  end

end
