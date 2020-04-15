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
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  get '/:operation/:number1/:number2' do 
    @operation=params[:operation]
    @number1=params[:number1].to_i
    @number2=params[:number2].to_i
    
    if @operation=="add"
      "#{@number1+@number2}"
      
    elsif @operation =="subtract"
      "#{@number2-@number1}"
      
    elsif @operation=="multiply"
      "#{@number1 * @number2}"
    
    elsif @operation == "divide"
      "#{@number1 / @number2}"    
      
    end 
    
    
  end 
  
  

end