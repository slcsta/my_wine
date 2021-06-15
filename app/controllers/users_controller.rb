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
            redirect '/signup'
        else
            user.save
            session[:user_id] = user.id
            redirect '/wines' 
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
            flash[:message] = "Error! Please Try Again"
            redirect '/login' 
        end
    end

    get '/users/:id' do
        #pseudocode
        # find current user and set equal to @user
        # access wines belonging to that user with @user.wines
        # go to show page in user's views
        # iterate over the array of wine objects to get producer_name for the list
        # post controller action to display the producer_name of each wine belonging to the current user
        # each wine in the user's list of wines should link to the individual wine page
        
        @user = User.find_by_id(params[:id])
        if logged_in?
            erb :'users/show'
            
        else
            redirect '/login'
        end
    end

    # post '/users' do
    #     # @user = 
    #     # if
    #     #     redirect "/users/#{@user.id}"
    #     # end
    # end

    post '/logout' do
        session.clear 
        redirect '/wines'
    end
end