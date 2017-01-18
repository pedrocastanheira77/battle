require 'sinatra/base'
require 'shotgun'

class Battle < Sinatra::Base
  set :session, true
  
  get '/' do
    'Hello'
  end

end
