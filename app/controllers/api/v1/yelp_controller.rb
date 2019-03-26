class Api::V1::YelpController < ApplicationController
  skip_before_action :authorized, only: [:search]

  #API endpoints
  @@api_base = "https://api.yelp.com/v3"
  @@search_path = "/businesses/search"
  @@business_path = "/businesses"

  def search
    url = "#{@@api_base}#{@@search_path}"
    response = HTTP.auth("Bearer #{ENV['YELP_API_KEY']}").get(url, params: yelp_params)
    businesses = response.parse["businesses"]
    random_business = businesses.sample
    render json: random_business
  end

  private

  def default_search_values
    # keys must be strings to properly merge with incoming params
    return {
      "term" => "lunch",
      "location" => "81 Prospect St, Brooklyn, NY",
      "radius" => 800, #800m ~0.5mi (1600 round-trip)
      "limit" => 50,
      "price" => '1, 2, 3',
      "open_now" => true
    }
  end

  def yelp_params
    default_search_values.merge(request.query_parameters)
  end


end
