class Pirate
  @@all = []
  attr_reader :name, :weight, :height
  def initialize(params) 
    @name = params["pirate"]["name"]
    @weight = params["pirate"]["weight"]
    @height = params["pirate"]["height"]
    binding.pry
    @@all << self
   end
   
   def self.all 
     @@all 
    end 
  def self.clear
    @@all.clear
  end
   
end