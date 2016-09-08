# We want to add the following methods to each of the classes
# An all method, where each object is added upon initialization of the object
# A find_by_name method for both the customer and the restaurant
# Build the following methods 
  # Customer#add_review

  # Review#customer
  # Review#restaurant

  # Restaurant#customers
  # Restaurant#reviews

# If you are not re-sketching out your domain, and thinking about single source of truth, 
# you are doing it wrong.

# Review 
# 	Belongs to customer 
# 	Belongs to resturant 
# Customer 
# 	Has many reviews 
# 	Has many resturants through reviews 
# Resturants 
# 	Has many reviews 
# 	Has many customers through reviews 

# Single source of truth...
# is when the customer adds a review, thats when all the relationships get made 
