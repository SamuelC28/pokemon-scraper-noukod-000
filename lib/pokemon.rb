class Pokemon
  @@all = []
  attr_accessor :name, :type, :db, :id, :hp

  def initialize(keyword)

  end

  # def self.all(name, type, db)
  #   @@all
  # end
  def self.save(name, type, db, database_connection)
    database_connection.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end
end
