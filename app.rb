require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :sessions_secret, "you shall never know"
    end

    get '/' do
        session["item"] = params[:item]
        @session = session
        erb :index
    end

    post '/checkout' do
        erb :checkout
    end
end
