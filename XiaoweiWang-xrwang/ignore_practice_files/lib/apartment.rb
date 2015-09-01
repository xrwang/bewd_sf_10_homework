require 'pry'

class Apartment
  attr_accessor :apartmentnumber, :sqft, :bedrooms, :bathrooms, :renter, :rent

  def initialize (apartmentnumber, sqft, bedrooms, bathrooms)
    @apartmentnumber = apartmentnumber
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @renter = nil
    @rent = nil
    #we set these to nil because it's not required for us to create a new apartment
    #if you want to define them, they need to be in initialize
  end


  def to_s
    "Apartment #{apartmentnumber} has #{sqft} squarefeet"
    #every class comes with a predefined set of things to do, inherits method
    #when you print out apartment1 (instance) it is Apartment xjdjdkfjfj OBject id number
    #basicaly you want it to print
  end

  def not_occupied?
  #   if renter == nil
  #     return false
  #   else
  #     return true
  # end
  renter.nil?
end

end
