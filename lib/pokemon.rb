class Pokemon
  @@all = []
  attr_accessor :name, :type, :db, :id, :hp

  def initialize(keyword)

  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end

  def self.find(num, db)
    pokemon = db.execute("SELECT * FROM pokemon WHERE id=?", [num])
    new_pokemon = self.new(pokemon)
    new_pokemon.id = pokemon[0][0]
    new_pokemon.name = pokemon[0][1]
    new_pokemon.type = pokemon[0][2]
    new_pokemon.hp = pokemon[0][3]
  return new_pokemon
 end

def bonus
   database_connection = SQLite3::Database.new('db/pets.db')
 
    Cat.new("Maru", "scottish fold", 3)
    Cat.new("Hana", "tortoiseshell", 1)
   
    Cat.all.each do |cat|
      Cat.save(cat.name, cat.breed, cat.age, database_connection)
    end
end
 

end
