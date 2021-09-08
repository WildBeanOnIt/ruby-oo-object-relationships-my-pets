require 'pry'
class Cat

  attr_accessor :owner
  attr_reader :name

  @@all = []

  def initialize(name, owner)
    #binding.pry
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end

  def mood=(mood)
    @mood = mood
  end

  def mood
    @mood
  end

  def self.all
    @@all
  end

  
  # code goes here
end