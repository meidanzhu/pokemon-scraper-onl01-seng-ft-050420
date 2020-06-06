class Pokemon
  attr_accessor :id, :name, :type

  def initialize(id, name, type)
    @id = id
    @name = name
    @type = type
  end

  def save
    sql = <<-SQL
      INSERT INTO pokemons (name, type)
      VALUES (?, ?)
    SQL

    DB[:conn].execute(sql, self.name, self.type)
end
