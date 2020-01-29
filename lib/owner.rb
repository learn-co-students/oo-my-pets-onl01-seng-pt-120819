class Owner
  attr_reader :name, :species, :mood
  
  @@all = []

 def initialize(name) 
  @species = "human" 
  @name = name
  @@all << self
 
 
 end 
  
 def say_species
   "I am a #{@species}."
 end
 
 def self.all 
  @@all
 end 
 
  def cats
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat(name)
    cats << Cat.new(name,self)
  end

  def buy_dog(name)
    dogs << Dog.new(name,self)
  end
 
  def walk_dogs
    dogs.each do |dog|
      dog.mood = "happy"
    end
  end
  
  def feed_cats
   cats.each do |cat|
    cat.mood = "happy"
  end 
 end
  
  def self.count
   @@all.count
  end
 
  def self.reset_all
   @@all.clear
  end 
  
  def sell_pets
    pets = self.dogs + self.cats
    pets.each do |pet|
    pet.mood = "nervous"
    pet.owner = nil
    end  
  end
  
  def list_pets
   "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end 
end