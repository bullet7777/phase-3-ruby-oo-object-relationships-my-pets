class Owner
  attr_reader :name , :species
  @@all=[]

  def initialize(name)
    @name=name
    @species='human'
    @@all << self
  end

  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all
  end
def self.count
  @@all.length
end
def self.reset_all
  @@all.clear
end

def cats 
  Cat.all.select{|c| c.owner == self}
end

def dogs 
  Dog.all.select{|d| d.owner == self}
end
def buy_cat(name)
  cat=Cat.new(name,self)
end
def buy_dog(name)
  dog=Dog.new(name,self)
end

def walk_dogs
  self.dogs.each do |d|
    d.mood="happy"
  end

end

def feed_cats
  self.cats.each do |d|
    d.mood="happy"
  end
end
def sell_pets
  self.dogs.each do |d|
    d.mood="nervous"
    d.owner = nil

  end
  self.cats.each do |d|
    d.mood="nervous"
    d.owner = nil
  end
end

def list_pets
 "I have #{self.dogs.length} dog(s), and #{self.cats.length} cat(s)."
end
end
