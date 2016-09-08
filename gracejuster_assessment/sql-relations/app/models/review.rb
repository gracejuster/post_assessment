class Review 
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods

  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    customer_id: "INTEGER",
    restaurant_id: "INTEGER"
  }

  attr_accessor(*self.public_attributes)  
  attr_reader :id

  

  def customer
    #select all customers where the id is the customer id of this review
    #have to joins 
    sql = <<-SQL
      SELECT customers.* FROM customers 
      INNER JOIN reviews ON reviews.customer_id = customers.id
      WHERE reviews.customer_id = ?
      SQL
    self.class.db.execute(sql, self.customer_id)
  end

  def restaurant
    #same goes for restaurant 
    sql = <<-SQL
      SELECT restaurants.* FROM restaurants
      INNER JOIN reviews ON reviews.restaurant_id = restaurant.id
      WHERE reviews.customer_id = ?
      SQL
    self.class.db.execute(sql, self.restaurant_id)
  end

end

