class UsersController < ApplicationController

    get '/signup' do
        erb :'users/signup'
    end

    post '/signup' do
        user = User.new(params)
        # We need to:
        # 1. instantiate a user
        # 2. ensure user signed up with valid data
        # 3. if user signed up successfully, then redirect
        # 4. if user didn't sign up properly, then redirect back to the form
    
        #if u.email.blank? || u.password.blank? || User.find_by_email(params["email"])
        if !user.save
            flash[:message] = "Error! Please Try Again"
            redirect '/signup' # maybe instead of redirecting to '/signup' redirect to failure or error page with a button to sign-up
        else
            user.save
            session[:user_id] = user.id
            redirect '/login' 
        end
    end

    get '/login' do
        # render the view in app/views/users/login.erb
        erb :'users/login'
    end
    
    post '/login' do
        user = User.find_by_email(params[:email]) # I don't think I need an instance variable here - *note:review that
        if user && user.authenticate(params[:password])
          session[:user_id] = user.id
          redirect '/wines'
        else
            redirect '/login' # do i want an error here? and then option to try logging in again?
        end
    end

    get "/users/:wine" do
        @user = User.find_by(params[:wine]) #see all of the users wines
        erb :'users/show'
    end


    post '/logout' do
        session.clear 
        redirect '/wines'
    end
end