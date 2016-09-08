class Owner
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods
  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    name: "TEXT",
  }

  attr_accessor(*self.public_attributes)  
  attr_reader :id

  def restaurants
    #select all owners where the id is the owner_id of this resturant 
    sql = <<-SQL
      SELECT * FROM owners
      WHERE owners.id = ?
      SQL
    self.class.db.execute(sql, self.owner_id)
  end
end