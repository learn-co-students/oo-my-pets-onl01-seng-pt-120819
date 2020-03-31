class Owner
  attr_reader :name, :species
  @@all=[]
  def initialize(name, species="human")
    @name=name
    @species=species
    save
  end
  
  def say_species
    message="I am a #{@species}."
    message
  end
  
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    allcats=[]
    Cat.all.each do |cat|
      if cat.owner == self
        allcats << cat
      end
    end
    allcats
  end
  
  def dogs
    alldogs=[]
    Dog.all.each do |dog|
      if dog.owner == self
        alldogs << dog
      end
    end
    alldogs
  end
  
  def buy_cat(catname)
    Cat.name=catname
  end
    
end