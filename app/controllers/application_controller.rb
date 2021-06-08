require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    #set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'jkkjkk' #want to properly assign in .env 
  end

  get "/" do
    erb :index
  end

end
