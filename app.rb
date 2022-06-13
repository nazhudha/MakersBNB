require 'sinatra/base'
require 'sinatra/reloader'

class MakersBNB < Sinatra::Base
  configure :development do
    register Sinatra::reloader
  end

  get '/' do
    'Welcome to MakersBNB, the place to rent properties'
  end
  
  run! if app_file == $0
end
