require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    word = PigLatinizer.new
    
    @latinized = word.piglatinize(params[:textbox])
    
    erb :piglatin_result
  end
  
end