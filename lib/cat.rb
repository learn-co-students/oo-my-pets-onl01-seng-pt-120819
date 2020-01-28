class Cat
  attr_accessor :owner, :mood
  attr_reader :name

  @@all = []
  #@owner= Owner.new(name)

  def initialize(name, owner)
    @name = name
    @owner = owner
    #@name = Cat.new(name, @owner)
    #@owner = Owner.new(name)
    @mood = "nervous"
    @@all << self
  end# code goes here

  def self.all
    @@all
  end

end
