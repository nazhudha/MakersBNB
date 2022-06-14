require 'sinatra/base'
require 'sinatra/reloader'

class MakersBNB < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :main
  end

  get '/space' do 
    erb :spaces
  end 

  get '/space/requests' do 
    erb :requests
  end 
  
  post '/space/requests' do 
    session[:approved_message] = "Your booking has now been approved"
    redirect '/space/approved'
  end

  get '/space/approved' do 
    @approved_message = session[:approved_message]
    erb :requests
  end
  
  

  run! if app_file == $0
end
