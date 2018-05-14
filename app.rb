require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :sessions_secret, "you shall never know"
    end

    get '/' do
        @session = session
        erb :index
    end

    post '/checkout' do
        binding.pry
        erb :checkout
    end
end
