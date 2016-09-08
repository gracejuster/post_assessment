class Restaurant
	attr_reader :name

	@@all = []

  def initialize(name)
  	@name = name
  	@reviews = []
  	@customers = []
  	@@all << self
  end 

  def self.all 
  	@@all
  end 

  def self.find_by_name(name)
  	self.all.find do |resturant|
  		resturant.name == name
  	end
  end 

  def customers 
  	@customers
  end 

  def reviews
  	@reviews
  end 
  
end