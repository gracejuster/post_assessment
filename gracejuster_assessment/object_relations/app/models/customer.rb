class Customer
	attr_accessor :reviews, :restaurants
	attr_reader :name

	@@all = []

  def initialize(name)
  	@name = name
  	@reviews = []
  	@restaurants = []
  	@@all << self 
  end 

  def self.all 
  	@@all
  end 

  def self.find_by_name(name) 
  	self.all.find do |customer|
      customer.name == name
    end 
  end 
  
  #single source of truth? 
  #customer goes to a resturant by leaving a review 
  def add_review(content, restaurant_name) 
    #find or create by name...there is a method for this but...
    if Restaurant.find_by_name(restaurant_name)
      restaurant = Restaurant.find_by_name(restaurant_name)
    else 
      restaurant = Restaurant.new(restaurant_name)
    end
    
    new_review = Review.new(content, restaurant) #new review
  	new_review.customer = self #tied to customer 


  	@reviews << new_review #added to customers reviews 
  	@restaurants << restaurant ##added to customers resturants 

  	restaurant.reviews << new_review #added to resturants reviews
  	restaurant.customers << self #customer added to resturant through reviews 
  end 


end

# customer = customer.add_review('it was good', Restaurant.new)
# a new review tied ot the restaurant
# and tied to the customer

