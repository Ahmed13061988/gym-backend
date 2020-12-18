class YelpSearch

    attr_reader :results
  
    def initialize(location)
      url = "https://api.yelp.com/v3/businesses/search"
      params = {
        term: "workout",
        location: location,
        limit: 15
      }
  
      response = HTTP.auth("Bearer #{ENV['YELP_KEY']}").get(url, params: params)
      @results = response.parse
    end
  
  
  end