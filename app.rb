require 'sinatra/base'
require 'sinatra/reloader'

class MakersBNB < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :main
  end

  get '/space' do 
    erb :spaces
  end 

  get '/space/request' do 
    erb :requests
  end 
  
  run! if app_file == $0
end
