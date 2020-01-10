require 'pry'
class Dog
  # code goes here
  attr_reader :name
  attr_accessor :owner, :mood

  @@all = []
  def initialize(name, owner, mood="nervous")
    @name = name
    @owner = owner
    @mood = mood
    @@all.push(self)
  end 

  def self.all 
    @@all
  end 

  def dogs 
    Dog.all.select {|dog| dog.owner == self}   
  end 

  def buy_dog(name)
    new_puppy = Dog.new(name, self)
   end 
  # binding.pry
end