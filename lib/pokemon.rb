class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(id, name, type, db)
    @id = id
    @name = name
    @type = type
    @db  = db
  end

  def self.save(name, type, db)
      sql = <<-SQL
       INSERT INTO pokemons (name, type)
       VALUES (?, ?)
     SQL

     DB[:conn].execute(sql, [name, type])
  end
#
#   def self.find(id, db)
#     pokemon = db.execute("SELECT name, type FROM pokemon WHERE id = (?);", id).flatten
#     name = pokemon[0]
#     type = pokemon[1]
#     Pokemon.new(id: id, name: name, type: type, db: db)
#   end
end
