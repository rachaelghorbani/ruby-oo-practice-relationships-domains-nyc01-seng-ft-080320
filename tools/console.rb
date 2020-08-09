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


################ LYFT INSTANCES ################

######## PASSENGER ########
pass1 = Passenger.new("Judy")
pass2 = Passenger.new("Blade")
pass3 = Passenger.new("Joe")

######## DRIVER ########

driver1 = Driver.new("Valdet")
driver2 = Driver.new("Toni")
driver3 = Driver.new("Juan")

######## RIDE ########

ride1 = Ride.new(15.92, pass1, driver2)
ride2 = Ride.new(557.2, pass2, driver3)
ride3 = Ride.new(3.0, pass3, driver1)
ride4 = Ride.new(4.33, pass1, driver1)
ride4 = Ride.new(87.3, pass1, driver1)
ride5 = Ride.new(77.3, pass2, driver2)
ride6 = Ride.new(108.0, pass3, driver2)


################ IMDB INSTANCES ################

######## ACTOR ########
act1 = Actor.new("Tom Cruz", 42)
act2 = Actor.new("Channing Tatum", 25)
act3 = Actor.new("Oprah", 67)
act4 = Actor.new("Oprah", 67)


######## CHARACTER ########

char1 = Character.new("Stripper", act2)
char2 = Character.new("Pilot", act1)
char3 = Character.new("Another Pilot", act1)
char4 = Character.new("Maria", act3)
char4 = Character.new("Maria", act3)
######## MOVIE ########

mov1 = Movie.new("Magic Mike", "Jim Jones")
mov2 = Movie.new("Coming Home", "No Idea")
mov3 = Movie.new("Tired", "Judy Judd")

######## SHOW ########

show1 = Show.new("Brooklyn 99")
show2 = Show.new("Girls")
show3 = Show.new("Criminal Minds")
show4 = Show.new("Tired")

######## MovieActor ########

ma1 = MovieActor.new(mov1, act1)
ma2 = MovieActor.new(mov2, act2)
ma3 = MovieActor.new(mov3, act3)
ma4 = MovieActor.new(mov2, act3)
ma5 = MovieActor.new(mov2, act1)
ma6 = MovieActor.new(mov2, act2)



######## MovieCharacter ########

mc1 = MovieCharacter.new(mov1, char1)
mc2 = MovieCharacter.new(mov2, char2)
mc3 = MovieCharacter.new(mov3, char3)
mc4 = MovieCharacter.new(mov2, char1)
mc4 = MovieCharacter.new(mov2, char3)

######## ShowActor ########

sa1 = ShowActor.new(show1, act1)
sa2 = ShowActor.new(show2, act2)
sa1 = ShowActor.new(show3, act3)
sa1 = ShowActor.new(show1, act2)

######## ShowCharacter ########

sc1 = ShowCharacter.new(show1, char1)
sc2 = ShowCharacter.new(show2, char2)
sc3 = ShowCharacter.new(show3, char3)
sc4 = ShowCharacter.new(show2, char3)


################ GYM INSTANCES ################

######## TRAINERS ########

t1 = Trainer.new("Judy")
t2 = Trainer.new("Natacha")
t3 = Trainer.new("Fanta")
t4 = Trainer.new("Soloman")

######## CLIENTS ########

c1 = Client.new("Sam")
c2 = Client.new("Blade")
c3 = Client.new("Valdet")

######## LOCATIONS ########

l1 = Location.new("Lexington")
l2 = Location.new("LES")
l3 = Location.new("NoHo")

################ CROWDFUNDING INSTANCES ################

######## USERS ########
u1 = User.new("Johnny")
u2 = User.new("Sandy")
u3 = User.new("Sam")
u4 = User.new("Jordan")

######## PROJECTS ########

pr1 = Project.new("Kicks", u1, 1500)
pr2 = Project.new("Oreos", u1, 700)
pr3 = Project.new("Dog Rescue", u3, 800)
pr4 = Project.new("Cat Rescue", u4, 600)
pr5 = Project.new("Bird Rescue", u2, 50)

######## PLEDGES ########

pl1 = Pledge.new(u1, pr3, 100)
pl2 = Pledge.new(u2, pr3, 400)
pl3 = Pledge.new(u2, pr3, 25)
pl4 = Pledge.new(u4, pr3, 1335)
pl4 = Pledge.new(u4, pr5, 804444)



Pry.start
