require 'sinatra/base'
require 'shotgun'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, "secret"

  get '/' do
    erb(:index)
  end

  post '/names' do
    p "in /names"
    p params
    p session
    p 'now assigning session variables'
    session[:p1_name] = params[:p1_name]
    session[:p2_name] = params[:p2_name]
    p session
    p session[:p1_name]
    redirect '/play'
  end

  get '/play' do
    p "now in /play"
    p session
    p session[:p1_name]
    @p1_name = session[:p1_name]
    @p2_name = session[:p2_name]
    erb(:play)
  end
end
