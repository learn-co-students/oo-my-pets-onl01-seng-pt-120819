class Owner
  attr_reader :name, :species
  @@all = []
  
  def initialize(name)
    @name = name
    @owner.species = human
    save
  end
  
  def say_species 
    puts ""I am a human."
end

  def save
  @@all << self
end  

  def self.all
  @@all
  end
  
  define reset_all
  Owner.reset_all
end

end