class Zoo

  attr_reader :name, :location

  @@all = []

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    return @@all
  end

  def name
    @name
  end

  def animals
    Animal.all.select do |animal|
      animal.zoo == self
    end
  end

  def animal_species
    animals.map {|animal| animal.species}.uniq
  end

  def find_by_species(species)
    animals.select do |animal|
      animal.species == species
    end
  end

  def animal_nicknames
    animals.map do |animal|
      animal.nickname
    end
  end

  def self.find_by_location(location)
    Zoo.all.select do |area|
      area.location == location
    end
  end

end
