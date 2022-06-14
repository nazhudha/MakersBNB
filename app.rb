require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/space.rb'

class MakersBNB < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/makersbnb' do    
    erb :'/makersbnb/index'
  end

  get '/makersbnb/spaces' do
    @spaces = Space.all
    erb :'/makersbnb/spaces'
  end
  
  run! if app_file == $0
end
