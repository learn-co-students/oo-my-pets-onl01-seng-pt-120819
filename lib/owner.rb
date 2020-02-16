class Owner
  attr_reader :name, :species
  @@all=[]
  def initialize(name, species="human")
    @name=name
    @species=species
    save
  end
  
  def say_species
    message="I am a #{@species}."
    message
  end
  
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def songs
    Cats.all.select {|cat| cat.owner == self}
  end
end