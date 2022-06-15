require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/space'

class MakersBNB < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  enable :sessions

  get '/makersbnb' do    
    erb :'/makersbnb/index'
  end

  get '/makersbnb/spaces' do
    @spaces = Space.all
    erb :'/makersbnb/spaces'
  end

  get '/makersbnb/requests' do 
    erb :'/makersbnb/requests'
  end 
  
  post '/makersbnb/requests' do 
    session[:approved_message] = "Your booking has now been approved"
    redirect '/makersbnb/approved'
  end

  get '/makersbnb/approved' do 
    @approved_message = session[:approved_message]
    erb :'makersbnb/requests'
  end
  
  run! if app_file == $0
end
