class Dog
  attr_reader :name
  attr_accessor :owner, :mood

  @@dogs = []

  def initialize(name, owner)
    @mood = "nervous"
    @name = name
    @owner= owner
    @@dogs << self
    # code goes here
  end

  def self.all
    @@dogs
  end



end
