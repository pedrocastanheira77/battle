require 'sinatra/base'
require 'shotgun'

class Battle < Sinatra::Base
  set :session, true

  get '/' do
    erb(:index)
  end

  post '/names' do
    @p1_name = params[:p1_name]
    @p2_name = params[:p2_name]
    erb(:play)
  end
end
