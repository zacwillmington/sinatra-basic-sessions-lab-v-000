require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :sessions_secret, "you shall never know"
    end

    get '/' do
        erb :index
    end

    post '/checkout' do
        session["item"] = params[:item]
        @session = session
        erb :checkout
    end
end
