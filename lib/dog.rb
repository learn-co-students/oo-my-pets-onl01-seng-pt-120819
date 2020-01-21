class Dog
  
 DOGS = []
  
  attr_accessor :owner, :mood
  attr_reader :name
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    DOGS << self
  end
  
  def self.all 
    DOGS
  end
  
end