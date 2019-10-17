class Ship
  @@all = []
  attr_reader :name, :type, :boody
  def initialize(params)
    
  @name = params["pirate"]["ships"][]["name"]
  @type = params["pirate"]["ships"][]["type"]
  @booty = params["pirate"]["ships"][]["booty"]
  @@all << self 
  end 
   def self.all 
     @@all 
    end 
  def self.clear
    @@all.clear
  end
end