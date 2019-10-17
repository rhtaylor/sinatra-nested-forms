class Ship
  @@all = []
  attr_reader :name, :type, :boody
  def initialize(params)
    params["pirate"]["ships"].each do |x|
      
  @name = x["name"]
  @type = x["type"]
  @booty = x["booty"]
  @@all << self 
  end
  end 
   def self.all 
     @@all 
    end 
  def self.clear
    @@all.clear
  end
end