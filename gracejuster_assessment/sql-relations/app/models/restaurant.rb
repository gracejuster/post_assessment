class Restaurant
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods
  
  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    name: "TEXT",
    location: "TEXT",
    owner_id: "INTEGER"
  }

  attr_accessor(*self.public_attributes)  
  attr_reader :id

  def owner
    #select the owners from owners whos id mateches the current resturants owner id 
    sql = <<-SQL
      SELECT owners.* FROM owners 
      WHERE restaurants.owner_id = ?
    SQL
    self.class.db.execute(sql, self.id)
  end
end