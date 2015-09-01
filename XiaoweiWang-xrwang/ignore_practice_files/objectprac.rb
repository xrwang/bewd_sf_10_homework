ticket = Object.new
def ticket.name
  "ticket for performance"
end

def ticket.date
  "01/02/2016"
end

def ticket.venue
  "american music hall"
end

def ticket.cost
  5.50
end

def ticket.available?
  false
end

puts "#{ticket.available?}"


print "Information desired"
request = gets.chomp

if ticket.respond_to?(request)
  puts ticket.send(request)
else
puts "no such info"
end
