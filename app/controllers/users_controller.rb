class UsersController < ApplicationController

    get '/signup' do
        erb :'users/signup'
    end

    post '/signup' do
        u = User.new(params)
        # We need to:
        # 1. instantiate a user
        # 2. ensure user signed up with valid data
        # 3. if user signed up successfully, then redirect
        # 4. if user didn't sign up properly, then redirect back to the form
    
        #if u.email.blank? || u.password.blank? || User.find_by_email(params["email"])
        if !u.save
            redirect '/signup'
        else
            u.save
            #binding.pry
            session[:user_id] = u.id
            redirect '/wines' 
        end
    end

    get '/login' do
        # render the view in app/views/users/login.erb
        erb :'/login'
    end
    
    post '/login' do
        @user = User.find_by(email: params[:email])
        if @user
          session[:user_id] = @user.id
          redirect '/wines'
        end
        redirect '/login'
    end

    post '/logout' do
        session.clear 
        redirect '/wines'
    end
end