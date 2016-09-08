class Review
	attr_accessor :customer, :resturant 
	attr_reader :content


	@@all = []

  def initialize(content, resturant)
  	@content = content
  	@resturant = resturant
  	@@all << self
  end 

  def self.all
  	@@all 
  end 


end

