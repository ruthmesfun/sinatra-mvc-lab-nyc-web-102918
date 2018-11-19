require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do 
        erb :user_input
    end

    # get '/piglatinize' do
    #     erb :piglatinize
    # end

    post '/piglatinize' do 
        phrase = PigLatinizer.new
        @phrase = phrase.piglatinize(params[:user_phrase])

        erb :piglatinize
        # redirect '/piglatinize'
    end


end