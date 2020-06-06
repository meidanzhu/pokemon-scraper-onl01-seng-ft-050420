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

     DB[:conn].execute(sql, name, type)
  end

  def self.find(id, db)
    sql = <<-SQL
      SELECT * FROM pokemon WHERE id = (?)
    SQL

    pokemon = db.execute(sql, id)
    new_pokemon = self.new(pokemon)
    new_pokemon.id = pokemon[0][0]
    new_pokemon.name = pokemon[0][1]
    new_pokemon.type = pokemon[0][2]
    new_pokemon
   end
end
