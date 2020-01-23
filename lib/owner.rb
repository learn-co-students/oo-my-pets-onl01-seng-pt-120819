require 'pry'

class Owner
  
  attr_reader :name, :species
  
  @@all = []
  @@count = 0 
  
  def initialize(name)
    @name = name 
    @species = "human"
    save
    @@count += 1 
  end
  
  def say_species 
    "I am a #{species}."
  end
  
  def save
    @@all << self 
  end
  
  def self.all 
    @@all
  end
  
  def self.count 
    @@count 
  end
  
  def self.reset_all
    @@count = 0 
  end 
  
  def cats 
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat(cat_name)
    Cat.new(cat_name, owner = self)
  end
  
  def buy_dog(dog_name)
    Dog.new(dog_name, owner = self)
  end
  
  def walk_dogs
    dogs.each {|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    cats.each {|cat| cat.mood = "happy"}
  end
  
  def sell_pets 
    dogs.each {|dog| dog.mood = "nervous"}
    cats.each {|cat| cat.mood = "nervous"}
    dogs.each {|dog| dog.owner = nil}
    cats.each {|cat| cat.owner = nil}
  end
  
  def list_pets
    dog_count = dogs.length
    cat_count = cats.length
    "I have #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
  
end