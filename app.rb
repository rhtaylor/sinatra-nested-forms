require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do 
      erb :root 
    end
    
    get '/new' do 
     
      erb :'pirates/new'
    end  
       post '/pirates' do
        new_pirate = Pirate.new(params)
        new_ship = Ship.new(params)
        
        @bas = params["pirate"]
        @pirate = params["pirate"]["name"]
        @ship_one = @bas["ships"][0]["name"]
        @ship_two = @bas["ships"][1]["name"]
        
        erb :'pirates/show' 
        
    end 
  end
end
