
require 'pry'
require 'JSON'
require 'rest-client'

class RenterGenerator
  attr_accessor :url, :users, :stories

  def initialize (url)
  @url = url
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
      author = story["data"]["author"]
      puts "#{author}"
    end
  end

end

RenterGenerator.new("http://www.reddit.com/.json")
