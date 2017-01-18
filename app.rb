require 'sinatra/base'
require 'shotgun'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, "secret"

  get '/' do
    erb(:index)
  end

  post '/names' do

    session[:p1_name] = params[:p1_name]
    session[:p2_name] = params[:p2_name]

    redirect '/play'
  end

  get '/play' do
    @p1_name = session[:p1_name]
    @p2_name = session[:p2_name]
    @p1_hp = 100
    @p2_hp = 100
    erb(:play)
  end
end
