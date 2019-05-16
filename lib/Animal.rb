class Animal
  @@all = []

  attr_accessor :weight, :zoo
  attr_reader :species, :nickname

  def initialize(species, weight, nickname)
    @species = species
    @weight = weight
    @nickname = nickname
    @@all << self
  end

  def self.all
    @@all
  end

  # def zoo(zoo)
  #   @zoo = zoo
  # end

  def self.find_by_species(special)
    animals = @@all.map do |animal|
      if animal.species == special
        animal
      end
    end
  end

end
