require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
################ AIRBNB INSTANCES ################
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

################ BAKERY INSTANCES ################

######## BAKERY ########

bakery1 = Bakery.new("Judy's")
bakery2 = Bakery.new("Val's")
bakery3 = Bakery.new("Rachael's")
bakery4 = Bakery.new("Blade's")

######## DESSERTS ########

dessert1 = Desserts.new("Ice Cream", bakery1)
dessert2 = Desserts.new("Candy", bakery2)
dessert3 = Desserts.new("Baklava", bakery2)
dessert4 = Desserts.new("Cotton Candy", bakery4)

######## INGREDIENTS ########

ingredient1 = Ingredients.new("Sugar", 35, dessert1)
ingredient2 = Ingredients.new("Flour", 12, dessert3)
ingredient3 = Ingredients.new("Eggs", 75, dessert2)
ingredient4 = Ingredients.new("Water", 0, dessert4)
ingredient5 = Ingredients.new("Salt", 15, dessert3)
ingredient5 = Ingredients.new("Salty Popcorn", 15, dessert3)

Pry.start
