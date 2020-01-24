class Owner
  
  attr_reader :name , :species 
  @@all = []
   
 
  def initialize (name, species="human")
    @name= name 
    @species= species 
    @@all << self 
    
  end
  
 def say_species 
   "I am a #{species}."
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.count 
    @@all.size 
  end 
  
  def self.reset_all 
    @@all.clear 
  end 
  
  def cats 
    Cat.all.select do |cat|
      cat.owner==self 
    end 
  end 
  
  def dogs 
    Dog.all.select do |dog|
      dog.owner==self 
    end 
  end 
  
  def buy_cat (cat_name)
    Owner.all<< Cat.new(cat_name,self,mood="nervous")
  end 
    
  def buy_dog (dog_name)
    Owner.all<< Dog.new(dog_name,self,mood="nervous")
  end 
  
  def walk_dogs 
    Dog.all.each do |dog|
      dog.mood= "happy"
    end 
  end 
  
  def feed_cats 
    Cat.all.each do |cat|
      cat.mood= "happy"
    end 
  end 
  
  def sell_pets 
    Cat.all.each do |cat|
      cat.mood= "nervous"
      cat.owner=nil 
    end
    Dog.all.each do |dog|
      dog.mood= "nervous"
      dog.owner= nil 
    end 
  end 
  
  def list_pets 
    return "I have #{dogs.size} dog(s), and #{cats.size} cat(s)."
  end 
  
end 