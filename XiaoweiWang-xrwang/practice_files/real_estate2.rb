
# the goal of real_estate2.rb is to take the number of authors from reddit.com/.json and use
# that number as the number of units in the building.
# there is only one renter per apartment
# the renter names come from reddit's author names

require_relative 'lib/building'
require_relative 'lib/apartment'
require_relative 'lib/renter'


require 'pry'
require 'JSON'
require 'rest-client'

class RenterGenerator
  attr_accessor :url, :users, :author

  def initialize (url)
    @url = url
    @users = users
    @author = author
    connect_to_api(url)
  end

  def connect_to_api(url)
    response = RestClient.get(url)
    response_p = JSON.parse(response)
    finding_stories(response_p)
  end

  def finding_stories(response_p)
    stories = response_p["data"]["children"]
    number_of_apartments = stories.length
    @users = number_of_apartments
    renter_names(stories)

    # puts "we have #{users} apartments and renters"
  end

  def renter_names(stories)
    stories.each do |story|
      @author = story["data"]["author"]
      # puts "#{author}"
    end
  end

end



class BuildingCreator
  attr_accessor :building, :user_list

  def initialize
    create_building
    create_resident_list
  end

  def create_resident_list
    user_list = RenterGenerator.new("http://www.reddit.com/.json")
    @user_list = user_list
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
    binding.pry
    units = user_list.users.to_i
    puts "This is a building called Reddit Central. From Reddit's json file, there are #{units} in this apartment"
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
    puts "____Renter Info_____"
    credit_score = 800
    salary = 50000000
    puts "at Reddit Central Building, our renters have #{credit_score} and #{salary}"
    puts "what is the renter's name"
    author.each do |author|
      renter_name = @author
    renter = Renter.new(credit_score , salary, renter_name)
  end

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
