joe = Customer.new("Joe")
anne = Customer.new("Anne")
julia = Customer.new("Julia")
grace = Customer.new("Grace")
hal = Customer.new("Hal")

fire = Restaurant.new("Fire")
spice = Restaurant.new("Spice")
valentinos = Restaurant.new("Valentinos")
aladins = Restaurant.new("Aladins")
deweys = Restaurant.new("Deweys")



review1 = joe.add_review("good atmosphere", "Fire")
review2 = anne.add_review("great new place", "Vino")
# review2 = anne.add_review("great staff", spice)
# review3 = julia.add_review("love this place", valentinos)
# review4 = grace.add_review("yummy selection", aladins)
# review5 = hal.add_review("hate it", deweys)
