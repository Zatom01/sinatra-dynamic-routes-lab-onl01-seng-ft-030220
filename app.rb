require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do 
    @name=params[:name].reverse()
    "#{@name}"
  end
  
  get '/square/:number' do 
    @num=params[:number].to_i * params[:number].to_i
    "#{@num}"
  end
  
  get '/say/:number/:phrase' do 
    @num=params[:number].to_i
    @phrase=params[:phrase]
    @final=@phrase * @num 
    "#{@final}"
    
  end 
  
  get '/say'
  

end