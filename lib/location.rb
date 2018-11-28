
class Location

  attr_reader :addresses, :rent

  @@all = []

  def self.all
    @@all
  end

  def self.all_addresses
    addresses_array = []
    @@all.each do |location_info|
      addresses_array << location_info.addresses
    end
    addresses_array
  end

  def initialize(addresses,rent)
    @addresses = addresses
    @rent = rent
    @@all << self
  end


end

#
# `Location.all`
#   + Returns an array of all `Location` instances, irrespective of the `Restaurant` each `Location` belongs to
# + `Location.all_addresses`
#   + Returns an array of the address of all `Location` instances.
