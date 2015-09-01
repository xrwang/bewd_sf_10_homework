require_relative 'lib/building'
require_relative 'lib/apartment'
require_relative 'lib/renter'

require 'pry'

class BuildingCreator
  attr_accessor :building

  def initialize
    create_building
  end

  def create_building
    puts "____Building Entry_____"
    puts "what the building address?"
    address = gets.chomp
    puts "what is the building name?"
    name = gets.chomp
    building = Building.new(address, name)
    #building.name = new_name
    #or puts building.name these are accessible because of attr_accessor in Building class
    @building = building
    add_unit_to_building
  end

  def add_unit_to_building#(building)
    puts "how many number of apartments"
    units = gets.strip.to_i
    units.times do
      @building.units.push(create_apartment)
    end
    @building.list_units
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
    apartmentnumber = gets.chomp
    puts "How many sqft"
    sqft = gets.chomp
    puts "how many bedrooms"
    bedrooms = gets.chomp
    puts "how many bathrooms"
    bathrooms = gets.chomp
    apartment = Apartment.new(apartmentnumber, sqft, bedrooms, bathrooms)
    add_renter_to_apartment(apartment)
    apartment
  end


  def add_renter_to_apartment(apartment)
    puts "how many number of renters"
    renter = gets.strip.to_i
    renter.times do
      apartment.renter = create_renter
    end
  end



  def create_renter
    puts "____Renter Entry_____"
    puts "What is the credit score of renter?"
    credit_score = gets.chomp
    puts "what is the renters salary"
    salary = gets.chomp
    puts "what is the renter's name"
    renter_name = gets.chomp
    renter = Renter.new(credit_score , salary, renter_name)
  end

  def print_all
    puts "#{@building}"
    building.units.each do |apartment|
      puts apartment.renter.renter_name
    end
  end

end

creator = BuildingCreator.new
creator.print_all
