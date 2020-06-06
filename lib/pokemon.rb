class Pokemon
  attr_accessor :id, :name, :type, :db, :hp

  def initialize(id, name, type, db, hp)
    @id = id
    @name = name
    @type = type
    @db  = db
    @hp = hp
  end

#   def self.save
#     sql = <<-SQL
#       INSERT INTO pokemons (name, type)
#       VALUES (?, ?)
#     SQL
#
#     DB[:conn].execute(sql, self.name, self.type)
#   end
#
#   def self.find(id, db)
#     pokemon = db.execute("SELECT name, type FROM pokemon WHERE id = (?);", id).flatten
#     name = pokemon[0]
#     type = pokemon[1]
#     Pokemon.new(id: id, name: name, type: type, db: db)
#   end
end
