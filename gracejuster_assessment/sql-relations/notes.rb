#HI THERE! 
#HAD A LOT OF TROUBLE ON THIS, WASN"T EVEN SURE HOW TO CHECK IT IN THE CONSOLE
#MOST OF THESE SOLUTIONS WERE FROM ONLINE 





# Consider how a yelp site is organized
# We need customers, restaurants, owners, and reviews.  How do they link up?

# As a first step
# Please write out the domain model on this file
# What we are concerned about is which tables have foreign keys
# Don't stress: There may be multiple correct answers based on your conception of the problem.

# Eg. for our books and authors your deliverable would look like

# books
id | title | author_id

# author
id | name |

# Hints:
# - The data always lives on the belongs to relationship
# - Do the belongs_to first
# - Then do the has_many
# - If there is a many to many, we need a third table

#reviews (joins table)
belong to customers 
belong to resturants 

id | customer_id | restaurant_id 

#customers 
have many reviews 
have many restaurants through reviews 

id  

#restaurants 
belong to owners 
have many reviews 
have many customers through reviews 

id | owner_id  

#owners
has many restaurants

id | name  


