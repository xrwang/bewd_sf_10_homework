require 'pry'

class Building
  attr_accessor :address, :name, :units

  def initialize (address, name)
    @address = address
    @name = name
    @units = []
  end
  #
  # def name
  #   @name
  # end
  # this is what attr_accessor does, this is why #{name} and @name works

#def units
#@units
#end
  # def name=(new_name)
  #   @name = new_name
  # end
  #
  # b.name = "asdfasdfa" --> @name = "asdfasdfa"
  # this above is what attr_accessor is also doing, letting you set the name

  def to_s
    "#{name} at #{address} has #{units.count} apartments"
  end

  def list_units
    puts "there are #{units.count} units in #{name}"
    # # units.each do |unit|
    # #   puts "building #{name} has #{bedrooms} bedrooms and #{units}"
    # end
  end
end

#
# building1= Building.new('thornberry','dorothy')
# puts building1.list_units
# add price for apartment
#show apartments are rented or not
