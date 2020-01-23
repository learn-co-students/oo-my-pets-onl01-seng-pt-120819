class Owner
  attr_reader :name, :species 

  @@all = []
  
  def initialize(name)
    @name = name 
    @species = "human"
    save
  end
  
  def say_species
    return "I am a #{@species}." 
  end
  
  def self.all 
    @@all
  end
  
  def save
    @@all << self
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats 
    Cat.all.select {|name| name.owner == self}
  end
  
  def dogs 
    Dog.all.select {|name| name.owner == self}
  end
  
  def buy_cat(name)
    cat = Cat.new(name, self)
  end

  def buy_dog(name)
    dog = Dog.new(name, self)
  end
  
  def walk_dogs
    owners_dogs = self.dogs
    owners_dogs.map {|x| x.mood = "happy"}
  end 

  def feed_cats
    owners_cats= self.cats
    owners_cats.map {|x| x.mood = "happy"}
  end

  def sell_pets
    owners_pets = self.cats.concat(self.dogs)
    owners_pets.map{|pet| pet.mood = "nervous"} &&
    owners_pets.map{|pet| pet.owner = nil}
  end
 
  def list_pets
    return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end