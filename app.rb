require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :sessions_secret, "you shall never know"
    end

    get '/' do
        @session = session
        @session[:item] = params[:item]
        erb :index
        binding.pry
    end

    post '/checkout' do
        erb :checkout
    end
end
