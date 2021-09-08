#require 'pry'
class Owner

attr_reader :name

@@all = []

  def initialize(name)
    #binding.pry
    #@owner.freeze
    @name = name
    @species = "human"
    @@all << self
  end

  def species(species)
    @species = species
  end

  def species
    #binding.pry
    @species
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
    @@all = []
  end
  
  def cats
    Cat.all.select { |c| c.owner == self } 
  end

  def dogs
    Dog.all.select { |d| d.owner == self }
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.each { |m| m.mood = "happy" }
  end

  def feed_cats
    self.cats.each { |m| m.mood = "happy" }
  end

  def sell_pets
    pets = self.dogs + self.cats 
    pets.each { |p| p.mood = "nervous"
      p.owner = nil }
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
  # code goes here
end