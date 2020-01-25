require 'pry'
class Owner
  # code goes here
     attr_reader :name , :species 
     @@all =[]
     def initialize(name)
       @name = name
       @species = "human"
     @@all << self
     
    end
    
    def say_species
      
      "I am a #{species}."
      
    end
    
    def self.all
     @@all
   end    
   def self.count
   
   @@all.count
  
   end
   
   def self.reset_all 
    # @@all.destroy
     @@all.clear
   end
   
  # def 
   def cats
  # binding.pry
  # self.Cat
    Cat.all.select {|cats| cats.owner == self}
   end   
   
   def dogs
   
   Dog.all.select {|dogs| dogs.owner == self}
   end
   
   def buy_cat(name)
  # binding.pry
  Cat.new(name, self)
   end
   
   def buy_dog(name)
     Dog.new(name, self)
     
   end
   
    def walk_dogs
      # binding.pry
      dogs.each {|dog| dog.mood ="happy"}
      # dog
    end
    
   def feed_cats
     cats.each {|cat| cat.mood ="happy"}
   end
   
   def sell_pets
  # binding.pry
    # dogs.each {|dog| dog. ="nervous"}
    # cats.each {|cat| cat.mood ="nervous"}
  # (dogs + cats).each {|dog,cat| (dog, cat)mood ="nervous"}
  dogs.each do |dog| 
    dog.mood = "nervous"
    dog.owner = nil
  end
  
  cats.each do |cat|
    cat.mood = "nervous"
    cat.owner = nil
   
 end
 end
 
   def list_pets
  # cats 
  # dogs
  "I have #{dogs.count} #{'dog'}(s), and #{cats.count} #{'cat'}(s)."
   end
end




