class Ticket
  attr_reader :venue, :date, :price
  attr_writer :price

  def initialize (v, d)
    puts "Creating a new ticket!"
    @venue = v
    @date = d
  end

  def Ticket.fg
    

end

th = Ticket.new("Town Hall", "11/12/13")
# cc = Ticket.new("Convention center", "12,13,14")
puts "This is #{th.venue} on #{th.date}"
# puts "The ticket costs #{th.price}"
