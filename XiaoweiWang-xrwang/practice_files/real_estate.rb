require_relative 'lib/building'
require_relative 'lib/apartment'
require_relative 'lib/renter'

require 'pry'

def create_building
  puts "____Building Entry_____"
  puts "what the building address?"
  address = gets.chomp
  puts "what is the building name?"
  name = gets.chomp
  building = Building.new(address, name)
  add_unit_to_building (building)
end

def add_unit_to_building(building)
  puts "how many number of apartments"
  units = gets.strip.to_i
  units.times do
  building.units.push(create_apartment)
end
  building.list_units
end

# def Building.make_apartments(number_of_apartments)
#   apartment = number_of_apartments.to_i
#   apartment.times do
#     Building.make_apartments
#   end
# end
#
# #class method
# def Building.make_apartment
#   apartment = gets.chomp
#   Building.new(address, name)
# end

def create_apartment
  puts "____Apartment Entry_____"
  puts "Which unit is this"
  unit = gets.chomp
  puts "How many sqft"
  sqft = gets.chomp
  puts "how many bedrooms"
  bedrooms = gets.chomp
  puts "how many bathrooms"
  bathrooms = gets.chomp
  Apartment.new(unit, sqft, bedrooms, bathrooms)
end


def create_renter
  puts "____Renter Entry_____"
  puts "What is the credit score of renter?"
  credit_score = gets.chomp
  puts "what is the renters salary"
  salary = gets.chomp
  puts "what is the renter's name"
  renter_name = gets.chomp
  Renter.new(credit_score,salary,renter_name)
end

create_building
