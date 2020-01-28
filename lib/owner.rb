class Owner  
  attr_reader :name

  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 

  def species(name="human")
    @name = name
  end 

  def say_species
    "I am a #{self.species}."
  end 

  def self.all 
    @@all
  end 

  def self.count 
    @@all.length
  end 

  def self.reset_all
    @@all = []
  end 

  def cats 
    Cat.all.select {|cat| cat.owner == self}
  end 

  def buy_cat(name)
   new_kitty = Cat.new(name, self)
  end 

  def feed_cats
    Cat.all.map {|cat| cat.mood = "happy"}
  end

  def dogs 
    Dog.all.select {|dog| dog.owner == self}   
  end 

  def buy_dog(name)
    new_puppy = Dog.new(name, self)
  end
  
  def walk_dogs
    Dog.all.map {|dog| dog.mood = "happy"}
  end

  def sell_pets
    Cat.all.map {|cat| cat.mood = "nervous"}
    Cat.all.map {|cat| cat.owner = nil}
    Dog.all.map {|dog| dog.mood = "nervous"}
    Dog.all.map {|dog| dog.owner = nil}
  end 

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end 

end