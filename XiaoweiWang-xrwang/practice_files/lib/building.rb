require 'pry'

class Building
  attr_accessor :address, :name, :units

  def initialize (address, name)
    @address = address
    @name = name
    @units = []
  end
  def to_s
    "#{name} at #{address} has #{units.count} apartments"
  end
  def list_units
    puts "there are #{units.count} units in #{name}"
    units.each do |unit|
      puts "building #{unit.name} has #{unit.bedrooms} bedrooms and #{unit}"
    end
  end
end



# add price for apartment
#show apartments are rented or not
