class Pokemon
  @@all = []
  attr_accessor :name, :type, :database_connection, :id, :hp

  def initialize(keyword)

  end

  def self.save(name, type, database_connection)
    database_connection.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end

def self.find(num, database_connection)
#   pokemon = db.execute("SELECT * FROM pokemon WHERE id=?", [num])
#     new_pokemon = self.new(pokemon)
#     new_pokemon.id = pokemon[0][0]
#     new_pokemon.name = pokemon[0][1]
#     new_pokemon.type = pokemon[0][2]
#     new_pokemon.hp = pokemon[0][3]
# return new_pokemon
end
