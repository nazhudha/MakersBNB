require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/space.rb'

class MakersBNB < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do    
    erb :index
  end

  get '/spaces' do
    @spaces = Space.all
    erb :spaces
  end
  
  run! if app_file == $0
end
