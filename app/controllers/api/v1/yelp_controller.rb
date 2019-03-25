class Api::V1::YelpController < ApplicationController
  skip_before_action :authorized

    #API endpoints
    @@api_base = "https://api.yelp.com/v3"
    @@search_path = "/businesses/search"
    @@business_path = "/businesses"

    def search
      term = params[:term]
      location = params[:location]
      url = "#{@@api_base}#{@@search_path}"
      params = {
        term: term,
        location: location,

        #OPTIONS - defaults for now
        radius: 800, #800m ~0.5mi (1600 round-trip)
        limit: 50,
        price: '1, 2, 3',
        open_now: true
      }
      response = HTTP.auth("Bearer #{ENV['YELP_API_KEY']}").get(url, params: params)
      businesses = response.parse["businesses"]
      random_business = businesses.sample
      render json: random_business
    end
end
