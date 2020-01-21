class Cat
  
  CATS = []
  
  attr_accessor :owner, :mood
  attr_reader :name
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    CATS << self
  end
  
  def self.all 
    CATS
  end
  
end