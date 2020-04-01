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
    Cat.new(catname,self,"happy")
    cats
  end
  
  def buy_dog(dogname)
    Dog.new(dogname,self,"happy")
    dogs
  end
  
  def walk_dogs
    Dog.all.each do |dog|
      dog.mood="happy"
    end
  end
  
  def feed_cats
    Cat.all.each do |cat|
      cat.mood="happy"
    end
  end
  
  def sell_pets
    Cat.all.each do |cat|
      cat.mood="nervous"
      cat.owner=nil
    end
    Dog.all.each do |dog|
      dog.mood="nervous"
      dog.owner=nil
    end
  end
  
  def list_pets
    numdogs=dogs.size
    numcats=cats.size
    list="I have #{numdogs} dog(s), and #{numcats} cat(s)."
    list
  end
end