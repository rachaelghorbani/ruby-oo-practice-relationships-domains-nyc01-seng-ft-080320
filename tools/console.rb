require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

######## GUESTS ########

guest1 = Guest.new("Rachael")
guest2 = Guest.new("Valdet")
guest3 = Guest.new("Natacha")
guest4 = Guest.new("Blade")
guest5 = Guest.new("Blade")

######## LISTINGS ########

listing1 = Listing.new("Madrid")
listing2 = Listing.new("Paris")
listing3 = Listing.new("Sydney")
listing4 = Listing.new("Tehran")
listing5 = Listing.new("Tehran")

######## TRIPS ########

trip1 = Trip.new(guest1, listing1)
trip2 = Trip.new(guest2, listing2)
trip3 = Trip.new(guest3, listing1)
trip4 = Trip.new(guest4, listing1)
trip5 = Trip.new(guest2, listing3)
trip5 = Trip.new(guest4, listing1)


Pry.start
