class Gym < ApplicationRecord

    def self.get_gym_from_yelp(location)
        gym = YelpSearch.new(location)
        businesses = gym.results["businesses"]
        businesses.each{|business| create_from_yelp_data(business)}
    end 

    def self.create_from_yelp_data(business)
        create(
            name: business["name"],
            url: business["url"],
            image_url: business["image_url"],
            address: business["location"]["display_address"].join(", ")
          )
    end 

end
