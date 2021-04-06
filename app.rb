require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 

     erb :user_input   

    end


    post '/piglatinize' do
    pl = PigLatinizer.new
     @phrase = pl.piglatin_here(params[:user_phrase])
    
    erb :piglatinize

    end
end