class Owner

  attr_reader :species, :name
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end# code goes here

  def say_species
    "I am a #{self.species}."
  end

  def self.count
    self.all.count
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end
end
