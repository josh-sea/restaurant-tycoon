
class Restaurant

  attr_reader :name, :location
  @@all = []

  def self.all
    @@all
  end


  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  #helper method

  def my_restaurants
    my_restaurants_are = []
    Restaurant.all.each do |restaurant| #this is each restaurant instance
      if restaurant == self
      # binding.pry
        my_restaurants_are << restaurant
      end
    end
    my_restaurants_are
  end

#wrote this befor my restaurant helper method
  def locations
    self.location
    # my_locations = my_restaurants.map{|restaurant| restaurant.location}
    # my_locations[0]
  end

  def total_rent
    rent = locations.map{|location| location.rent}
    rent = rent.reduce{|sum, rent| sum +rent}
    rent
  end

  def create_location(new_location,rent)
    self.location << Location.new(new_location,rent)
  end


end # end of the restaurant class


# Restaurant.all`
#   + Returns all `Restaurant` instances
# + `Restaurant#locations`
#   + Returns an array of all `Locations`s of this particular `Restaurant` instance
# + `Restaurant#total_rent`
#   + Returns the total amount this `Restaurant` pays for all of its `Location`s
# + `Resturant#create_location`
#   + Creats a new `Location` instance for this particular `Restuarant`
