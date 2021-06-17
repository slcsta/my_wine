class UsersController < ApplicationController

    get '/signup' do
        erb :'users/signup'
    end

    post '/signup' do
        user = User.new(params)
        if user.email.blank? || user.username.blank? || user.password.blank? || User.find_by_email(params["email"])
        #if !user.save
            flash[:message] = "Error! Please Try Again"
            redirect '/signup'
        else
            user.save
            session[:user_id] = user.id
            redirect '/wines' 
        end
    end
    
    get '/login' do
        erb :'users/login'
    end
    
    post '/login' do
        user = User.find_by_email(params[:email]) 
        if user && user.authenticate(params[:password])
          session[:user_id] = user.id
          redirect '/wines'
        else
            flash[:message] = "Error! Please Try Again"
            redirect '/login' 
        end
    end

    get '/users/:id' do
        @user = User.find_by_id(params[:id])
        erb :'users/show' 
    end

    post '/logout' do
        session.clear 
        redirect '/wines'
    end

    
end